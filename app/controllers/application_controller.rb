class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #before_filter :authenticate_employer!
  
  
  
  protected
    def current_page
      params[:page] || 1
    end
  
end
