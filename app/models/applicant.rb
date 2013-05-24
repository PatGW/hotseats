class Applicant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :city, :website, :description, :resume, :skill_list
  
  validates :name, presence: true
  validates :city, presence: true
  
  
  acts_as_taggable_on :skills
  
  
  has_many :job_applications
  
  mount_uploader :resume, ResumeUploader
  
  
  def applied_to?(job)
    JobApplication.where(job_id: job, applicant_id: self).present?    
  end




  
end
