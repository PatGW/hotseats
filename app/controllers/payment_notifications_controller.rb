class PaymentNotificationsController < ApplicationController
  protect_from_forgery :except => [:create]
 
   def create
    PaymentNotification.create!(:params => params, :job_id => params[:item_number], :status => params[:payment_status], :transaction_id => params[:txn_id])
    

    @job = Job.find(params[:item_number])
    @job.update_attributes(:jobpaid => true)

    render :nothing => true


  
  end

  
end