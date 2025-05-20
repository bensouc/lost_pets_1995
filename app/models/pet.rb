class Pet < ApplicationRecord
  SPECIES = %w(dog cat rabbit snake turtle racoon)
  validates :name, presence: true
  validates :species, inclusion: {in: SPECIES }
  validates :found_on, presence: true
end
