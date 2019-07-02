Rails.application.routes.draw do
  
  devise_for :admins
  root 'places#index'
  resources :places
  get "new", to: "places#new"
  get "Edit Place", to: "places#edit"


end
