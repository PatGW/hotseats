class JobsController < ApplicationController

  def new
    @job = Job.new
    @job.build_employer unless current_employer
  end

  def create
     
    @job = Job.new params[:job]
    @job.employer = @employer = current_employer || @job.employer
     
    
    
    
    if @job.valid? && @employer.valid?
      @job.save!
      
      if current_employer
        render action: :created
        #user gets message thatsw his posting is successfull in it, or you can reditect to the index of all of his postings with redirect_to whatever
      else
        #he just got signed up
        redirect_to welcome_path
      end
      
      
      
    else
      render action: :new
    end
    
    
  end


  def show
      @job = Job.find(params[:id])
  end 
  

  
  
  
  


end
