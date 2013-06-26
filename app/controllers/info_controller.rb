class InfoController < ApplicationController
  def home

  	if params[:search]
  		params[:page] == 1
  		@jobpaid = Job.where(:jobpaid => "t")
    	@finder = @jobpaid.find(:all, :include => :employer, :conditions => ['title ILIKE ?', "%#{params[:search]}%"])
    	@jobs = Kaminari.paginate_array(@finder).page(params[:page]).per(10)

    else
    	   @jobs = Job.where(:jobpaid => true).order("created_at DESC").page(current_page).per(10)
    end

  end
  
end
