class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.boolean :admin, default: false
      t.boolean :physio, default: false
      t.boolean :patient, default: false
      t.string :vorname
      t.string :name
      t.datetime :geburtsdatum
      t.string :straße
      t.string :hausnummer
      t.integer :plz
      t.string :ort
      t.integer :telefonnummer
      t.string :qualifikation
      t.string :krankenkasse
      t.text :befund

      t.timestamps null: false
    end
  end
end
