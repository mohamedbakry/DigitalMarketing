package com.ikonsoft.mbeans.user.customer;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

import org.primefaces.event.FlowEvent;

import com.ikonsoft.model.Partner;
import com.ikonsoft.model.User;
import com.ikonsoft.services.PartnerService;
import com.ikonsoft.services.UserService;
import com.ikonsoft.services.email.SendHtmlEmailService;
import com.ikonsoft.user.customer.services.impl.CustomerServicesImpl;
import com.ikonsoft.utils.Groups;
import com.ikonsoft.utils.PropertiesCache;

@ManagedBean
@ViewScoped
public class CustomerWizard implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private User user = new User();

	private boolean skip;

	public CustomerWizard() {
	}

	public String save() {
		
		FacesMessage msg = new FacesMessage("Please Wait checking our records and send mail", "Welcome ");
		FacesContext.getCurrentInstance().addMessage(null, msg);
		UserService userService = new UserService();
		user.setAuthority(Groups.CUSTOMER);
		userService.createUser(user);
		
		FacesMessage msgss = new FacesMessage("Successful", "Welcome :"
				+ getUser().getFirstName());
		System.out.println("New Customer Registered :"+user.getEmailId());
		try {
			SendHtmlEmailService.sendGroupEmail(user.getEmailId(), "", PropertiesCache.getValue("adminEmail"), "Registration Successful", "<h2>Thank you for registration as a partner for CityStars </h2>");
		} catch (UnsupportedEncodingException e) {
			
			e.printStackTrace();
		} 
		
		return "RegDone";
	}

	public boolean isSkip() {
		return skip;
	}

	public void setSkip(boolean skip) {
		this.skip = skip;
	}

	public void setSurvey(String location, String profession)
	{
		user.setProfession(profession);
		user.setCity(location);
		user.setAuthority(Groups.CUSTOMER);
	}
	public String onFlowProcess(FlowEvent event) {
		if (skip) {
			skip = false; // reset in case user goes back
			return "confirm";
		} else {
			return event.getNewStep();
		}
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}