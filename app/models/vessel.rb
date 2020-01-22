class Vessel < ApplicationRecord
  belongs_to :steamship_line
  has_many :voyages
end
