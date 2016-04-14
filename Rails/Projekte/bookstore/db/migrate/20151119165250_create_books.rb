class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.text :description
      t.datetime :published
      t.decimal :price

      t.timestamps null: false
    end
  end
end
