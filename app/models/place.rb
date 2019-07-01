class Place < ApplicationRecord

# Pagination Count:
  paginates_per 5

# Validations:  
  validates :name, presence: true, length: {maximum: 26, minimum: 3}
  validates :description, presence: true, length: {maximum: 140, minimum: 3}
  validates :address, presence: true, length: {maximum: 140, minimum: 3}

end
