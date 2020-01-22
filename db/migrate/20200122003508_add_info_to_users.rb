class AddInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :terminal, foreign_key: true
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :approved, :boolean, default: false, null: false
    add_index :users, :approved
    add_column :users, :admin, :boolean, default: false, null: false
    add_index :users, :admin
  end
end
