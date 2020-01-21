class CreateGangs < ActiveRecord::Migration[5.2]
  def change
    create_table :gangs do |t|
      t.boolean :flexed
      t.references :shift, foreign_key: true
      t.integer :top_pick
      t.integer :utr
      t.text :note

      t.timestamps
    end
  end
end
