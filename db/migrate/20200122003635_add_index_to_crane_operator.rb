class AddIndexToCraneOperator < ActiveRecord::Migration[5.2]
  def change
    add_index :crane_operators, :work_number
    add_index :crane_operators, :name
  end
end
