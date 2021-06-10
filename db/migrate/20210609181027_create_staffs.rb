class CreateStaffs < ActiveRecord::Migration[6.1]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :last_name
      t.integer :dni
      t.date :birth
      t.string :staff_type

      t.timestamps
    end
  end
end
