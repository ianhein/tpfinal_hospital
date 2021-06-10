class CreateInsurances < ActiveRecord::Migration[6.1]
  def change
    create_table :insurances do |t|
      t.string :insurance_name
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
