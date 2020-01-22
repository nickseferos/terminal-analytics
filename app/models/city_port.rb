class CityPort < ApplicationRecord
  belongs_to :state_province
  has_many :terminals
end
