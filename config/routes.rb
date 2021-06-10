Rails.application.routes.draw do
  resources :insurances
  devise_for :users
  resources :consults
  resources :studies
  resources :staffs
  resources :patients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root'patients#index'
end
