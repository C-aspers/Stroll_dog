class Doggy < ApplicationRecord
  has_many :strolls
  has_many :dogsitters, through: :strolls
  belongs_to :city, optional: true
end
