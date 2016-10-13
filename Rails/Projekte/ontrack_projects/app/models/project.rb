class Project < ActiveRecord::Base
	has_many :jobs, dependent: :destroy

	validates :title, presence: true
	validates :description, presence: true
	validates :start_date, presence: true
	validate :after_start_date

	def after_start_date
		if end_date.present? && end_date < start_date
      errors.add(:end_date, "can't be before start_date")
    end
  end   

end
