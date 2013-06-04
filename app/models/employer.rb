class Employer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :city, :company_name, :website, :logo, :prepaid, :admin
  # attr_accessible :title, :body
  
  mount_uploader :logo, LogoUploader
  
  
  has_many :jobs
  
  validates :name, presence: true
  validates :city, presence: true
  validates :company_name, presence: true
  
  
  def job_applications
    JobApplication.where(:job_id=>jobs)
  end
  
      
  
end
