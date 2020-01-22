class Terminal < ApplicationRecord
  belongs_to :city_port
  has_many :users
end
