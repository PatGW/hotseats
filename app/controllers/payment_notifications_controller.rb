class PaymentNotificationsController < ApplicationController
  protect_from_forgery :except => [:create]
 
   def create
    PaymentNotification.create!(:params => params, :job_id => params[:item_number], :status => "hello", :transaction_id => params[:txn_id])
    render :nothing => true

  
  end

  
end
