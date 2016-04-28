class FavoritesController < ApplicationController
	before_action :require_signin
	before_action :set_movie

	def create
		#@movie.fans.create(user: current_user)
		@movie.fans << current_user
		redirect_to @movie, notice: "Super, ein Fan mehr für die Scheiße"
	end

	def destroy
		favorite = current_user.favorites.find(params[:id])
		favorite.destroy
		redirect_to @movie, notice: "Gut gemacht, war eh scheiße!"
	end

	private
		def set_movie
			@movie = Movie.find(params[:movie_id])
		end
end
