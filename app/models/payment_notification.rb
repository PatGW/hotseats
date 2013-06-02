class PaymentNotification < ActiveRecord::Base
	belongs_to :job
	serialize :params
	# after_create :mark_job_as_paid
 	attr_accessible :params, :job_id, :status, :transaction_id

 	private

 	def mark_job_as_paid
 		job = Job.find(:job_id)
 		job.update_attribute(:jobpaid => true)
 		
 	end	
7end
