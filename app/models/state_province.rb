class StateProvince < ApplicationRecord
  belongs_to :country
  has_many :city_ports
end
