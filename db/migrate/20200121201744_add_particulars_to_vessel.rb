class AddParticularsToVessel < ActiveRecord::Migration[5.2]
  def change
    add_column :vessels, :loa, :string
    add_column :vessels, :breadth, :string
    add_column :vessels, :max_speed, :string
    add_column :vessels, :bays, :string
    add_column :vessels, :capacity, :string
  end
end
