
package com.ikonsoft.services;

import java.util.List;


import com.ikonsoft.model.Partner;
import com.ikonsoft.utils.HibernateUtil;

import org.hibernate.Query;
import org.hibernate.Session;

 
public class PartnerService {
	
    public int createPartner(Partner partner)
    {  int id = 0;
    Partner existingpartner = getPartnerByEmailId(partner.getCompanyEmail());
    if (existingpartner!=null){ 
    System.out.println("Cant create partner , email already exists");
    return 0;
    }
   Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    
    try {
        session.beginTransaction();
        session.save(partner);
        session.getTransaction().commit();
          id = partner.getId();
        System.out.println("\n\nNew Person Id :"+id);
        } catch (RuntimeException e) {  e.printStackTrace(); } 
    
          return id;           	          
    }
    
    public Partner getPartnerByEmailId(String email)
    {    Partner partner = null;
    	 Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    	   session.beginTransaction();
    	     String hql = "SELECT p FROM Partner p WHERE p.companyEmail = :companyEmail";
    	     Query query = session.createQuery(hql);
    	     query.setParameter("companyEmail",email); 
    	     
    	     List results = query.list();
    	if (results.size()>0) { partner = (Partner) results.get(0);
    	
    	   System.out.println("partner id = "+partner.getId());
    	}else {
    		  System.out.println("partner Not found");
    	}
    	  session.getTransaction().commit();
    	   
    	    return (partner);        	          
    }
  
    
    
    
}
