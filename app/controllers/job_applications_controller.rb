class JobApplicationsController < ApplicationController



  def create
    JobApplication.create job: Job.find(params[:id]), applicant: current_applicant, cover_letter: "asd"
    flash[:notice] = "you are applied"
    redirect_to root_path
  end
  
  
  
end
