class RegistrationsController < ApplicationController
	before_action :set_event
	def index
		@registrations = @event.registrations
	end

	def new
		@registration = @event.registrations.new
	end

	def create
		@registration = @event.registrations.new(registration_params)
		if @registration.save
			redirect_to event_path(@event.id), notice: "Die Registrierung wurde gespeichert"
		else
			render :new, notice: "Fehler beim Speichern"
		end
	end

	def destroy
		@registration = Registration.find(params[:id])
		@registration.delete
		redirect_to event_registrations_url(@event.id), alert: "Registrierung von #{@registration.name} erfolgreich gelöscht"
	end

	private
		def registration_params
			params.require(:registration).permit(:name, :email, :how_heard, :event_id)
		end
		def set_event
			@event = Event.find(params[:event_id])
		end
end
