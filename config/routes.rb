Rails.application.routes.draw do
  resources :workshops
  resources :service_workshops
  resources :person_workshops
  resources :locations
  resources :cities
  root "rc_workshop#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
