# special-care app 
    App for managing special needs child, documents, medications, behavior, life skills, diet and well-being.

## data model

- patient
    t.string :first_name
    t.string :middle_name
    t.string :last_name
    t.date :birthdate
    t.string :phone1
    t.string :phone2
    t.string :email
    t.string :bio
    t.string :triggers
    t.text :preferences
    t.text :diagnosis
    t.string :url
    t.string :address_number
    t.string :address_extension
    t.string :address_line2
    t.string :address_street
    t.string :address_city
    t.string :address_state
    t.string :address_zip

    has_many :documents
    has_many :images
    has_many :medications
    has_many :goals
    has_many :schedules

- goal
    t.integer :patient_id
    t.string :title
    t.text :description
    t.date :target_date
    t.string :status
    t.string :category
  
    has_many :documents

    class Goal < ActiveRecord::Base
        enum status: [ :active, :archived ]
        enum category: [ :behavioral, :dietary, :skill, :mental, :physical, :spiritual ]
    end
 
- document
    t.string :title
    t.text :description
    t.string :format
    t.string :url

    belongs_to :patient

- image
    t.string :title
    t.string :url
    t.string :format

    belongs_to :patient

- schedule
    t.string :title
    t.text :description

    belongs_to :patient
    has_many :events

- event
    t.integer :patient_id
    t.string :title
    t.text :description
    t.datetime :start_time
    t.datetime :end_time
    t.date :start_date
    t.date :end_date
 
- doctor [SEE CAREGIVER]
    t.string :first_name
    t.string :middle_name
    t.string :last_name
    t.date :birthdate
    t.string :phone1
    t.string :phone2
    t.string :email
    t.string :bio
    t.string :triggers
    t.text :preferences
    t.text :diagnosis
    t.string :url
    t.string :address_number
    t.string :address_extension
    t.string :address_line2
    t.string :address_street
    t.string :address_city
    t.string :address_state
    t.string :address_zip

- medication
    t.string :name
    t.text :description
    t.string :url
    
    has_many :medication_side_effects
    has_many :side_effects, through: :medication_side_effects

- medication_side_effects
    t.integer :medication_id
    t.integer :side_effect_id

- side_effect
    t.string :name
    t.text :description

    has_many :medication_side_effects
    has_many :medications, through: :side_effects

 
- prescription
    t.text :description
    t.integer :doctor_id
    t.integer :medication_id
    t.date  :start_date
    t.date :end_date
    t.integer :doseage_amount
    t.datetime :doseage_time

    has_many :prescription_events
    has_many :events, through: :prescription_events

- caregiver
    t.string :first_name
    t.string :middle_name
    t.string :last_name
    t.date :birthdate
    t.string :phone1
    t.string :phone2
    t.string :email
    t.string :bio
    t.string :triggers
    t.text :preferences
    t.text :diagnosis
    t.string :url
    t.string :address_number
    t.string :address_extension
    t.string :address_line2
    t.string :address_street
    t.string :address_city
    t.string :address_state
    t.string :address_zip

    enum caregiver_type: [ :doctor, :social_worker, :advocate, :para_professional, :guardian ]


stories:parent stores document, pdf, scan, photo
stories: parent stores images