package com.ikonsoft.mbeans.user.customer;

import java.io.Serializable;

import com.ikonsoft.utils.Groups;
import com.ikonsoft.utils.JSFUtil;
import com.ikonsoft.model.User;
import com.ikonsoft.services.UserService;
import com.ikonsoft.utils.StringUtil;

import javax.faces.bean.ManagedBean;
 
import javax.faces.bean.SessionScoped;

@ManagedBean
@SessionScoped
public class CustomerLoginMB implements Serializable  {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserService();
	private String email;
	private String password;
	private User customer ;

	public String doLogin() {
		System.out.println(getEmail());
		System.out.println(getPassword());
		System.out.println("customerLoginMB.doLogin()");
		if (StringUtil.isNull(getEmail()) || StringUtil.isNull(getPassword())) {
			System.out.println("error");
			return "CustomerLogin";
		}
	customer =userService.getUserByEmailId(email);
		 
		if (customer ==null ){
			JSFUtil.addErrorMsg("Please Register Or Enter Registered Account  !");
			return "CustomerLogin";
		}
		else if (customer.getPassword().equals(password)&& customer.getAuthority().equals(Groups.CUSTOMER)) {
			return "CustomerProfile";
		} else {
			JSFUtil.addErrorMsg("Please Register Or Enter Registered Account  !");
		}
		return "CustomerLogin";

	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public User getCustomer() {
		return customer;
	}

	public void setCustomer(User customer) {
		this.customer = customer;
	}

	 
	 
}
