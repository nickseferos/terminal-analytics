class Gang < ApplicationRecord
  belongs_to :shift
  has_many :jobs
end
