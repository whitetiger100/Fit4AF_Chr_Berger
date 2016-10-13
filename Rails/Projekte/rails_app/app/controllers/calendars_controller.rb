class CalendarsController < ApplicationController
  def show
  	@date = params[:id] ? Date.parse(params[:id]) : Date.today
  	@items = Event.all.group_by(&:start_at)
  	@events = Hash.new
  	@items.each do |key, val|
  		@events[key.day] = val if key.present?
  	end
  end
end
