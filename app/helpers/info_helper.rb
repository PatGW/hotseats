module InfoHelper
	def dateformat(job)
		job.created_at.to_formatted_s(:long_ordinal)

	end
end	