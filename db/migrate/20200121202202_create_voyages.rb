class CreateVoyages < ActiveRecord::Migration[5.2]
  def change
    create_table :voyages do |t|
      t.string :number
      t.references :vessel, foreign_key: true

      t.timestamps
    end
  end
end
