class Job < ActiveRecord::Base
  
  attr_accessible :title, :location, :description, :info, :employer, :position_type, :employer_attributes, :jobpaid  
  belongs_to :employer
  has_many :job_applications
  has_one :payment_notification
  accepts_nested_attributes_for :employer
  
  validates :employer, presence: true
  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :info, presence: true
  validates_inclusion_of :position_type, in: %w(Full-Time Contract Freelance)
  
  scope :full_time, where(:position_type=>"Full-Time")
  scope :contract, where(:position_type=>"Contract")
  scope :freelance, where(:position_type=>"Freelance")
  
  
end
