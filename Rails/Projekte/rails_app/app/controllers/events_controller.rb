class EventsController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update, :destroy]
	before_action :require_signin, except: [:index]
	before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]

	def index
		@events = Event.all
		# if params[:filter] == "past"
		# 	@events = Event.past
		# elsif params[:filter] == "upcoming"
		# 	@events = Event.upcoming
		# elsif params[:filter] == "free"
		# 	@events = Event.free				
		# else
		# 	@events = Event.all
		# end
	end

	def past
		@events = Event.past
	end

	def upcoming
		@events = Event.upcoming
	end

	def free
		@events = Event.free
	end

	def show
		@likers = @event.likers
		if current_user
			@current_like = current_user.likes.find_by(event_id: @event.id)
		end
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			flash[:notice] = "Erfolgreich gespeichert."
			redirect_to events_url
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @event.update(event_params)
			redirect_to events_url, notice: "Event erfolgreich überarbeitet."
		else
			render :edit
		end
	end

	def destroy
		@event.destroy
		redirect_to events_url, alert: "Event erfolgreich gelöscht."
	end

	private
		def event_params
			params.require(:event).permit(:name, :image_file, :capacity, :description, :location, :price, :start_at, :category_id)
		end

		def set_event
			@event = Event.find(params[:id])
		end

end
