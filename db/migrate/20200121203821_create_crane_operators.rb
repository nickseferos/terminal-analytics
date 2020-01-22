class CreateCraneOperators < ActiveRecord::Migration[5.2]
  def change
    create_table :crane_operators do |t|
      t.string :name
      t.string :work_number

      t.timestamps
    end
  end
end
