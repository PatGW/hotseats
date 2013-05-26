class AdminsController < ApplicationController

	def approve

		@notapproved = Applicant.all

		@applicantid = params[:id]

		@applicant = params[:id]
	end	

	def update 

		@applicant = Applicant.find(params[:id])
		
		#auth checks here
		@applicant.update_attributes :approved => 1
		

	end
end
