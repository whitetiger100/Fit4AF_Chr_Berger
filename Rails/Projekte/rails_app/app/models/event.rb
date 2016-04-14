class Event < ActiveRecord::Base
	has_many :registrations, dependent: :destroy

	validates :name, presence: true
	validates :description, length: {minimum: 25}
	validates :price, numericality: true

	def free?
		self.price.present? && self.price > 0
	end 

	def spots_left
		if capacity.zero?
			0
		else
			capacity - registrations.size
		end
	end

	def self.upcoming
		where("start_at >= ?", Time.now).order("start_at")
	end
end
