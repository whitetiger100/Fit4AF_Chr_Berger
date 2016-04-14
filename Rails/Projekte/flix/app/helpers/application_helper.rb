module ApplicationHelper

	def flop_top(var)
		if var.flop?
			"FLOP!"
		else
			number_to_currency(var.total_gross, unit: " € ")
		end 
	end

	def stars(stars)
		if movie.poster_image_file.blank?
			image_tag("dummy.jpg")
		else
			image_tag(movie.poster_image_file)
		end
	end

end
	
