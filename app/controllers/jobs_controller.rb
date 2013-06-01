class JobsController < ApplicationController
  before_filter :employer_signed_in, only: [:myjobs]
  # before_filter :authenticate_employer!, only: [:applications] 
  before_filter :correct_employer?, only: [:applications] 

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

        sign_in(@employer)
        redirect_to jobpayment_path
      end
      
      
      
    else
      render action: :new
    end
    
    
  end


  def show

      @job = Job.find(params[:id])

  end 

 

  def myjobs
    
    @employerjobs = current_employer.jobs
 
  end  


  def applications

    @job = Job.find(params[:id]) 

    job_id = @job.id

    @applications = JobApplication.all(:select => "job_applications.*, applicants.*", :joins => :applicant, :conditions => "job_id = #{job_id}")


  


  end

  private

  def employer_signed_in
      if is_employer? == true
        return true
      else

      redirect_to root_path
    end
  end 

  def correct_employer?

    
       @job = Job.find(params[:id])

       # @employer = Employer.find(@job.employer_id)

       if current_employer.id == @job.employer_id

          return true

        else

        redirect_to root_path

        end
  end      

    # if current_employer.id == params[:id]

    #   return true
    # else
    #   redirect_to root_path
    # end  

  
 



    
 
end
