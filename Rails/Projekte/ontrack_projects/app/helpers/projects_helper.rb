module ProjectsHelper

	def rest_days
		if project.end_date < Date.today
			"abgelaufen!"
		else
			Date.today - project.end_date
		end
	end

end
