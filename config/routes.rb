Rails.application.routes.draw do
  resources :nps
  resources :skills
  resources :attris
  resources :s_classes
  resources :servants
  root 'servants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
