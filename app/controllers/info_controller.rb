class InfoController < ApplicationController



  def home
    @jobs = Job.order("created_at DESC").page(current_page).per(3)
  end
  
  
  def post_job
    
  end

end
