class MoviesController < ApplicationController
	before_action :set_movie, only: [:show, :edit, :update, :destroy]
	before_action :require_signin, except: [:index]
	before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]
	
	def index
		@movies = Movie.all
	end

	def hits
		@movies = Movie.hits
	end

	def flops
		@movies = Movie.flops
	end

	def upcoming
		@movies = Movie.upcoming
	end

	def recent
		@movies = Movie.recent
	end

	def show
		@reviews = Review.where(params[:id])
		@fans = @movie.fans
		if current_user
			@current_favorite = current_user.favorites.find_by(movie_id: @movie.id)
		end
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			flash[:notice] = "Erfolgreich gespeichert."
			redirect_to movies_url
		else
		render :new
		end
	end

	def edit
	end

	def update
		@movie.update(movie_params)
		if @movie.save
			redirect_to movies_url, notice: "movie successful edited!"
		else
			render :edit
		end
	end

	def destroy
		@movie.destroy
		redirect_to movies_url, alert: "movie successful deleted!"
	end

	private
		def movie_params
			params.require(:movie).permit(:poster_image_file, :director, :cast, :duration, :title, :description, :total_gross, :rating, :released_on)
		end

		def set_movie
			@movie = Movie.find(params[:id])
		end

end
