Rails.application.routes.draw do
  resources :sclasses
  resources :nps
  resources :skills
  resources :attris
  resources :servants
  root 'servants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
