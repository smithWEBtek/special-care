class Goal < ApplicationRecord
  enum status: [:life_skill, :behavioral, :mental, :spiritual, :physical, :dietary]
end
