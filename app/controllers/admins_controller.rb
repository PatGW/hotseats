class AdminsController < ApplicationController

	def approve

		@notapproved = Applicant.all
	end	

end
