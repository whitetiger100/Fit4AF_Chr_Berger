class MakeReviewsAsAJoinTable < ActiveRecord::Migration
  def up
  	Review.delete_all
  	remove_column :reviews, :name
  	add_column :reviews, :user_id, :integer
  end

  def down
  	Review.delete_all
  	add_column :reviews, :name, :string
  	remove_column :reviews, :user_id
  end
end
