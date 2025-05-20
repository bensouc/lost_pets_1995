class Pet < ApplicationRecord
  SPECIES = %w(dog cat rabbit snake turtle racoon)
  validates :name, presence: true
  validates :species, inclusion: {in: SPECIES }
  validates :found_on, presence: true

  def days_since_found
    # renvoi un entier , le nomb de jour entre found_on et aujourdhui
    (Date.today - found_on).to_i
  end
end
