class CreatePortCalls < ActiveRecord::Migration[5.2]
  def change
    create_table :port_calls do |t|
      t.references :terminal, foreign_key: true
      t.references :voyage, foreign_key: true
      t.datetime :eta
      t.datetime :first_line
      t.datetime :atd
      t.datetime :last_line
      t.datetime :first_container
      t.datetime :last_contaienr
      t.datetime :first_reefer
      t.datetime :last_reefer
      t.integer :total_discharge
      t.integer :total_load
      t.integer :total_rehandle

      t.timestamps
    end
  end
end
