module JobsHelper

	def is_employer?
  		if current_employer.present?
  				return true
  			else
  				return false
  		end
  		
  	end

end
