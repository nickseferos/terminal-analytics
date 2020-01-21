class CreateCityPorts < ActiveRecord::Migration[5.2]
  def change
    create_table :city_ports do |t|
      t.string :name
      t.references :state_province, foreign_key: true

      t.timestamps
    end
  end
end
