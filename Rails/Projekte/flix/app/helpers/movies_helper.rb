module MoviesHelper
	def image_for(movie)
		if movie.poster_image_file.blank?
			image_tag("dummy.jpg")
		else
			image_tag(movie.poster_image_file)
		end
	end
end
