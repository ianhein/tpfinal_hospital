class CreateConsults < ActiveRecord::Migration[6.1]
  def change
    create_table :consults do |t|
      t.datetime :wait_time
      t.datetime :consult_time
      t.string :material_used
      t.integer :material_cost
      t.references :staff, null: false, foreign_key: true
      t.references :study, null: false, foreign_key: true

      t.timestamps
    end
  end
end
