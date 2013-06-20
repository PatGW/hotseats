class InfoController < ApplicationController
  def home

  	if params[:search]
  		params[:page] == 1
    	@test = Job.find(:all, :include => :employer, :conditions => ['title LIKE ?', "%#{params[:search]}%"])

    	@jobs = Kaminari.paginate_array(@test).page(params[:page]).per(3)

    else

    	   @jobs = Job.where(:jobpaid => true).order("created_at DESC").page(current_page).per(3)
    end

  end
  
end
