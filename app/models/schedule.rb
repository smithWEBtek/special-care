class Schedule < ApplicationRecord
  belongs_to :patient
  has_many :events
end
