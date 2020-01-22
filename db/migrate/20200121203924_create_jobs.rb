class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.references :crane_operator, foreign_key: true
      t.references :gang, foreign_key: true

      t.timestamps
    end
  end
end
