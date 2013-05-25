class InfoController < ApplicationController



  def home
    @jobs = Job.order("created_at DESC").page(current_page).per(3)
  end
  
  
  def myjobs

  	# @jobs = Job.find(1)

  	# @user = current_employer

  	@employerjobs = current_employer.jobs


    
  end

end
