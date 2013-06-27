class JobApplication < ActiveRecord::Base

  attr_accessible :job, :applicant, :cover_letter
  belongs_to :job
  belongs_to :applicant
  
  validates :job, presence: true
  validates :applicant, presence: true
  validates :cover_letter, presence: true
  
end
