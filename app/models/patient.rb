class Patient < ApplicationRecord
  has_many :documents
  has_many :images
  has_many :medications
  has_many :goals
  has_many :schedules
end
