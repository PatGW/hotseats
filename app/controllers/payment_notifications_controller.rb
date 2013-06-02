class PaymentNotificationsController < ApplicationController
  protect_from_forgery :except => [:create]
 
   def create
    PaymentNotification.create!(:params => params, :job_id => params[:item_number], :status => params[:payment_status], :transaction_id => params[:txn_id])
    
	   	if params[:payment_status] == "Completed"

	   	 	@job = Job.find(params[:item_number])
	    	@job.update_attributes(:jobpaid => true)

	    	render :nothing => true

	    else
	    	render :nothing => true	
	    end

	    if params[:transaction_subject] == "5job"
	    	employer = Employer.find(@job.employer_id)

	    	employer.update_attributes(:prepaid => 4)

	    	render :nothing => true
	    else	
	    	render :nothing => true	
	    end

  
  	end

  
end