Rails.application.routes.draw do
  resources :treatment_side_effects
  resources :medication_side_effects
  resources :side_effects
  resources :treatments
  resources :medications
  resources :prescriptions
  resources :caregivers
  resources :events
  resources :schedules
  resources :documents
  resources :images
  resources :goals
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
