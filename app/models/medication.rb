class Medication < ApplicationRecord
  has_many :medication_side_effects
  has_many :side_effects, through: :medication_side_effects
end
