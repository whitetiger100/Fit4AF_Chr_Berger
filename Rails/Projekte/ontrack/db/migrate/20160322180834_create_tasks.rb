class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :decription
      t.date :start_date
      t.date :end_date
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
