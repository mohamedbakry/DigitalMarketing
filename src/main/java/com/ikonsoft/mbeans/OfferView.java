package com.ikonsoft.mbeans;

import java.io.Serializable;
import java.util.List;
import java.util.Random;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import com.ikonsoft.model.Campaign;
import com.ikonsoft.model.Offer;
import com.ikonsoft.services.OfferService;

@ManagedBean
@ViewScoped
public class OfferView implements Serializable {
     
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;



	private List<Offer> offers;
	private List<Offer> approvedoffers;
    
    
    private Offer selectedOffer;
    private Offer approvedselectedOffer;
     
  
    private OfferService  offerService =new OfferService();
     
    @PostConstruct
    public void init() {
    	offers=offerService.getNotApproved();
    	approvedoffers=offerService.getApproved();
    	
    }
 
    
    public List<Offer> getOffers() {
        return offers;
    }
 
    public void executeOffer(Offer offer)
    {
    	Random rndNumbers = new Random(20);
        int rndNumber = rndNumbers.nextInt(Integer.MAX_VALUE)+1;

        System.out.println("Number: " + rndNumber);
    	System.out.println("offer Executed = " + offer.getId());
    }
    
    public String deleteOffer(Offer offer)
    {
    	try{
        	offerService.deleteOffer(offer);
        	
        	}catch(Exception ex)
        	{
        		
        	}
        	
    	System.out.println("offer deleted = " + offer.getId());
        	return "SelectToExecute";	
    	
    }
    public void setService(OfferService service) {
        this.offerService = service;
        
    }
 
    public Offer getSelectedOffer() {
        return selectedOffer;
    }
 
    public void setSelectedOffer(Offer selectedOffer) {
        this.selectedOffer = selectedOffer;
    }

	public Offer getApprovedselectedOffer() {
		return approvedselectedOffer;
	}

	public void setApprovedselectedOffer(Offer approvedselectedOffer) {
		this.approvedselectedOffer = approvedselectedOffer;
	}

	public List<Offer> getApprovedoffers() {
		return approvedoffers;
	}

	public void setApprovedoffers(List<Offer> approvedoffers) {
		this.approvedoffers = approvedoffers;
	}
	public String approve(Offer offer) {
    	int res=offerService.approveOffer(offer);
    	if(res>0)
    	return "BusinessDashboard";
    	else
    		return "Home";
		
	}
}
