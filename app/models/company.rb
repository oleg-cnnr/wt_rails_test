class Company < ApplicationRecord
  validates :name, length: { in: 3..64 }
end
