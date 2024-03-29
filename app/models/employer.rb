class Employer < ActiveRecord::Base

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :city, :company_name, :website, :logo, :prepaid, :admin

  mount_uploader :logo, LogoUploader
  
  has_many :jobs
  
  validates :name, presence: true
  validates :city, presence: true
  validates :company_name, presence: true
  
  
  def job_applications
    JobApplication.where(:job_id=>jobs)
  end
  
end
