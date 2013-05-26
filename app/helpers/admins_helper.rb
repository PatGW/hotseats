module AdminsHelper

	 def applied_to?(job)
    	JobApplication.where(job_id: job, applicant_id: self).present?    
  	end

  	def is_admin?
  		if current_employer.present?
  			if current_employer.admin == true
  				return true
  			else
  				return false
  			end
  		end	
  	end
  		

end
