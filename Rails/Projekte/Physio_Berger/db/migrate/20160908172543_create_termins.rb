class CreateTermins < ActiveRecord::Migration
  def change
    create_table :termins do |t|
      t.datetime :behandlungstermin
      t.string :behandlungsart

      t.timestamps null: false
    end
  end
end
