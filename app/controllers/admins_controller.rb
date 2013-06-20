class AdminsController < ApplicationController

	def approve

		@notapproved = Applicant.where(:approved => false) 

		@applicantid = params[:id]

		@applicant = params[:id]
	end	

	def update 

		@applicant = Applicant.find(params[:id])
	
		@applicant.update_attributes :approved => 1
		
	end
end
