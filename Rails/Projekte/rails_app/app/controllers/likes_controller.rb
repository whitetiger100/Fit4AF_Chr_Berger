class LikesController < ApplicationController
	before_action :require_signin
	before_action :set_event

	def create
		#@event.likes.create(user: current_user)
		@event.likers << current_user
		redirect_to @event, notice: "Super, ein Like mehr für die Scheiße"
	end

	def destroy
		like = current_user.likes.find(params[:id])
		like.destroy
		redirect_to @event, notice: "Gut gemacht, war eh scheiße!"
	end

	private
		def set_event
			@event = Event.find(params[:event_id])
		end
end
