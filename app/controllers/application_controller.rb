class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #before_filter :authenticate_employer!

  def is_employer?
  		current_employer.present?		
  end

  
  
  
  protected
    def current_page
      params[:page] || 1
    end
  
end
