class CreateTerminals < ActiveRecord::Migration[5.2]
  def change
    create_table :terminals do |t|
      t.references :city_port, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
