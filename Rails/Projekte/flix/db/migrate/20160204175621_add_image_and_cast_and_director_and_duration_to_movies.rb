class AddImageAndCastAndDirectorAndDurationToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :poster_image_file, :string
    add_column :movies, :cast, :string
    add_column :movies, :director, :string
    add_column :movies, :duration, :integer
  end
end
