class SideEffect < ApplicationRecord
  has_many :medication_side_effects
  has_many :medications, through: :side_effects
end
