class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.string :shift_type
      t.boolean :late_start
      t.boolean :clean_start
      t.references :port_call, foreign_key: true

      t.timestamps
    end
  end
end
