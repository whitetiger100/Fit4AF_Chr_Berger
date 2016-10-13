class User < ActiveRecord::Base
	has_secure_password

  has_many :patienten, class_name: "Termin", foreign_key: "patient_id"
  has_many :physios, class_name: "Termin", foreign_key: "physio_id"
  validates :username, presence: true
  validates :email, presence: true, format: /\A\S+@\S+\z/

  def self.authenticate(email, password)
  	user = User.find_by(email: email)
  	user && user.authenticate(password)
  end
end