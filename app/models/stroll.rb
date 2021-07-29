class Stroll < ApplicationRecord
  belongs_to :doggies
  belongs_to :dogsitters
  belongs_to :city, optional: true
end
