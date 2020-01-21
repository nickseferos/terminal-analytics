class CreateVessels < ActiveRecord::Migration[5.2]
  def change
    create_table :vessels do |t|
      t.string :name
      t.references :steamship_line, foreign_key: true

      t.timestamps
    end
  end
end
