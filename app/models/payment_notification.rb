class PaymentNotification < ActiveRecord::Base
	belongs_to :job
	serialize :params
	after_create :mark_job_as_paid
 	# attr_accessible :params, :paypal_id, :status, :transaction_id

 	private

 	def mark_job_as_paid
 		if status == "Completed"
 			job.update_attribute(:jobpaid => true)
 		end	
 	end	
end