class Dogsitter < ApplicationRecord
  has_many :strolls
  has_many :doggies, through: :strolls
  belongs_to :city, optional: true
end
