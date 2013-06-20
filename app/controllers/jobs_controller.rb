class JobsController < ApplicationController
  before_filter :employer_signed_in, only: [:myjobs]
  before_filter :correct_employer?, only: [:applications, :prepaid] 

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
        render :payment
       
      else
        
        render :payment
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

  def prepaid
    current_balance = current_employer.prepaid
    @job = Job.find(params[:id])
    if current_balance > 0
       @job.update_attributes(:jobpaid => true)
       current_employer.update_attributes(:prepaid => current_balance - 1)
       @message = "Your Job has been successfully purchased with prepaid credits and created"

    else
       @message = "Error - You have no prepaid job credits"
    end 


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

       if current_employer.id == @job.employer_id

          return true

        else

        redirect_to root_path

      end
  end      
    
end
