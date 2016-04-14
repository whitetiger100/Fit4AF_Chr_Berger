class Movie < ActiveRecord::Base
	has_many :reviews, dependent: :destroy

	validates :title, presence: {message: ": Das Feld muss ausgefüllt sein"}
	validates :released_on, presence: {message: ": Das Feld muss ausgefüllt sein"}
	validates :duration, presence: {message: ": Das Feld muss ausgefüllt sein"}
	validates :description, length: {minimum: 25, message:": Die Beschreibung muss mindestens 25 Zeichen lang sein!"}
	validates :total_gross, numericality: {greater_than_or_equal_to: 0, message:": Die Einnahmen müssen größer oder gleich 0 sein!"}
	validates :poster_image_file, allow_blank: true, format: { with: %r{.(gif|jpg|png)}, message:": Das Bild muss vom Format .gif .jpg oder .png sein!"}
	validates :rating, inclusion:  { in: %w(G PG PG-13 R NC-17), message:": Der Film muss das Rating G, PG, PG-13, R oder NC-17"}

	def flop?
		total_gross < 150000 unless total_gross.blank?
	end

	def self.shown
		where("released_on <= ?", Time.now).order("released_on")
	end

	def self.total_gross
		where("total_gross >= 100000000")
	end
end
