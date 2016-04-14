class Registration < ActiveRecord::Base
  belongs_to :event

	HOW_HEARD_OPTIONS = ['Newsletter', 'Blog Post', 'Twitter', 'Web Search', 'Other']
	validates :how_heard, inclusion: { in: HOW_HEARD_OPTIONS }
	validates :email, format: { with: /(\S+)@(\S+)/}
	validates :name, presence: true
end
