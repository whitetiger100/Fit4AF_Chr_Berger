class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :vorname
      t.string :nachname
      t.text :beschreibung
      t.integer :anzahl,1

      t.timestamps null: false
    end
  end
end
