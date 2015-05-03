package com.ikonsoft.mbeans.user.partner;

import java.io.Serializable;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.bean.SessionScoped;

import com.ikonsoft.model.Partner;
import com.ikonsoft.services.PartnerService;
import com.ikonsoft.utils.JSFUtil;
import com.ikonsoft.utils.StringUtil;

@ManagedBean
@SessionScoped
public class PartnerLoginMB implements Serializable   {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private PartnerService partnerService = new PartnerService();
	private String email;
	private String password;
	private Partner partner;
	public String doForward() {
		return "PartnerRegister";
	}

	public String doLogin() {
		System.out.println("______PartnerLoginMB()__________");
		System.out.println(email );
		System.out.println(password );
	
		if (StringUtil.isNull(email ) || StringUtil.isNull(password )) {
			System.out.println("error");
			return "Partner";
		}

		partner = partnerService.getPartnerByEmailId(email );
		if (partner == null) {
			JSFUtil.addErrorMsg("Please Register Or Enter Registered Account  !");
			return "PartnerLogin";
		} else if (partner.getPassword().equals(password)) {
			System.out.println("success");
			JSFUtil.setLoggedinUser(partner);
			return "success";
		} else {
			JSFUtil.addErrorMsg("Please Register Or Enter Registered Account  !");
			// return "Partner";
		}
		return "Partner";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Partner getPartner()
	{
		return partner;
	}
	
	public void setPartner(Partner partner)
	
	{
		this.partner=partner;
	}
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
