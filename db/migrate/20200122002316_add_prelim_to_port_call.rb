class AddPrelimToPortCall < ActiveRecord::Migration[5.2]
  def change
    add_column :port_calls, :prelim_discharge, :boolean
    add_column :port_calls, :prelim_load, :boolean
    add_column :port_calls, :prelim_rehandle, :boolean
  end
end
