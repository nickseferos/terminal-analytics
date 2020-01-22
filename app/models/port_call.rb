class PortCall < ApplicationRecord
  belongs_to :terminal
  belongs_to :voyage
  has_many :shifts
end
