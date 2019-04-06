class Caregiver < ApplicationRecord
  enum caregiver_type: [ :doctor, :social_worker, :advocate, :para_professional, :guardian ]
end
