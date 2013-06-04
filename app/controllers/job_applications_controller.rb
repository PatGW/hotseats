class JobApplicationsController < ApplicationController



  def create
    JobApplication.create job: Job.find(params[:id]), applicant: current_applicant, cover_letter: "asd"
    flash[:notice] = "You have susessfully applied. Your details have been sent to the employer"
    redirect_to root_path
  end

  # def show

  # 	@job_application = JobApplication.find(params[:id])



  # end
  
  
  
end
