class City < ApplicationRecord
  has_many :doggies
  has_many :dogsitters
  has_many :strolls
end
