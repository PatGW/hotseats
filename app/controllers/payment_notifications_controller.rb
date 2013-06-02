class PaymentNotificationsController < ApplicationController
  protect_from_forgery :except => [:create]
 
   def create
    PaymentNotification.create!(:params => params, :job_id => params[:item_number], :status => params[:payment_status], :transaction_id => params[:txn_id])
    
	   	if params[:payment_status] == "Completed"

	   	 	@job = Job.find(params[:item_number])
	    	@job.update_attributes(:jobpaid => true)

	    	

	    else
	    		
	    end

	    if params[:transaction_subject] == "5job"
	    	employer = Employer.find(@job.employer_id)
	    	current_prepaid = employer.prepaid
	    	if current_prepaid == nil 
	    		employer.update_attributes(:prepaid => 0)
	    	end	
	    	current_prepaid = employer.prepaid
	    	employer.update_attributes(:prepaid => current_prepaid + 4)

	    	
	    else	
	    	
	    end
	    render :nothing => true	
	  
  	end

  
end