class CreateStudies < ActiveRecord::Migration[6.1]
  def change
    create_table :studies do |t|
      t.string :study_name
      t.float :study_cost

      t.timestamps
    end
  end
end
