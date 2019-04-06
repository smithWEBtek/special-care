class MedicationSideEffect < ApplicationRecord
  belongs_to :medication
  belongs_to :side_effect
end
