class User < ActiveRecord::Base
  has_secure_password

  has_many :reviews
  has_many :favorites, dependent: :destroy
  has_many :movies, through: :favorites
  has_many :favorite_movies, through: :favorites, source: :movie

  validates :name, presence: true
  validates :email, presence: true, format: /\A\S+@\S+\z/, uniqueness: {case_sensitive: false}
  
  def self.authenticate(email, password)
  	user = User.find_by(email: email)
  	user && user.authenticate(password)
  end
end
