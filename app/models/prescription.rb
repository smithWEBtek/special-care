class Prescription < ApplicationRecord
  has_many :prescription_events
  has_many :events, through: :prescription_events
end
