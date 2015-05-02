package com.ikonsoft.mbeans;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import com.ikonsoft.model.Campaign;
import com.ikonsoft.services.CampaignService;
import com.ikonsoft.services.ReportLaunch;

@ManagedBean
@ViewScoped
public class CampaignView implements Serializable {
     
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;



	private List<Campaign> campaigns;
	private List<Campaign> Approvedcampaigns;
    
    
    
    private Campaign selectedCampaign;
    private Campaign approvedselectedCampaign; 
  
    private CampaignService  campaignService =new CampaignService();
     
    @PostConstruct
    public void init() {
    	campaigns=campaignService.getNotApproved();
    	setApprovedcampaigns(campaignService.getApproved());
    }
 
    public String approve(Campaign campaign) {
    	int res=campaignService.approveCampaign(campaign);
    	if(res>0)
        	return "BusinessDashboard";
        	else
        		return "Home";
		
	}
    
   
    public void executeCampaign(Campaign campaign)
    {
    	System.out.println("campaign Executed = " + campaign.getId());
    }
    
    public String deleteCampaign(Campaign campaign)
    {
    	try{
    	campaignService.deleteCampaign(campaign);
    	
    	}catch(Exception ex)
    	{
    		
    	}
    	
    	System.out.println("campaign Deleted = " + campaign.getId());
    	return "SelectToExecute";	
    }
    
    public List<Campaign> getCampaigns() {
        return campaigns;
    }
 
    public void setService(CampaignService service) {
        this.campaignService = service;
        
    }
 
    public Campaign getSelectedCampaign() {
        return selectedCampaign;
    }
 
    public void setSelectedCampaign(Campaign selectedCampaign) {
        this.selectedCampaign = selectedCampaign;
    }

	public List<Campaign> getApprovedcampaigns() {
		return Approvedcampaigns;
	}

	public void setApprovedcampaigns(List<Campaign> approvedcampaigns) {
		Approvedcampaigns = approvedcampaigns;
	}

	public Campaign getApprovedselectedCampaign() {
		return approvedselectedCampaign;
	}

	public void setApprovedselectedCampaign(Campaign approvedselectedCampaign) {
		this.approvedselectedCampaign = approvedselectedCampaign;
	}
    
}
