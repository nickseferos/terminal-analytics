json.extract! port_call, :id, :terminal_id, :voyage_id, :eta, :first_line, :atd, :last_line, :first_container, :last_contaienr, :first_reefer, :last_reefer, :total_discharge, :total_load, :total_rehandle, :created_at, :updated_at
json.url port_call_url(port_call, format: :json)
