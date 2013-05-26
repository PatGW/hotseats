module AdminsHelper

	 def applied_to?(job)
    	JobApplication.where(job_id: job, applicant_id: self).present?    
  	end
end
