class Project < ActiveRecord::Base

	has_many :tasks

	validates :title, length: {minimum: 5, message:": The title must be at least 5 letters long!"}
	validate :start_date_future

	def start_date_future
		if start_date < Time.now
			errors.add(:start_date, "must be in the future!")
		end
	end

end
