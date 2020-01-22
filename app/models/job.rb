class Job < ApplicationRecord
  belongs_to :crane_operator
  belongs_to :gang
end
