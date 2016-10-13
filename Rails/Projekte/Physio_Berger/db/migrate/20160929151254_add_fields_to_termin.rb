class AddFieldsToTermin < ActiveRecord::Migration
  def change
    add_column :termins, :physio_id, :integer
    add_column :termins, :patient_id, :integer
  end
end
