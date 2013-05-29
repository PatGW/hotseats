class AdminsController < ApplicationController

	def approve

		@notapproved = Applicant.where(:approved => false) 

		@applicantid = params[:id]

		@applicant = params[:id]

		# def applied_to?(job)
  #   	JobApplication.where(job_id: job, applicant_id: self).present?    
  	# end
	end	

	def update 

		@applicant = Applicant.find(params[:id])
		
		#auth checks here
		@applicant.update_attributes :approved => 1
		

	end
end
