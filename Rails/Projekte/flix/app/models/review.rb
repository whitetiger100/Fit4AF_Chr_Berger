class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user

  FILM_RATING = [1, 2, 3, 4, 5]
	validates :stars, inclusion: { in: FILM_RATING }
	validates :comment, presence: true
end
