Rails.application.routes.draw do
  

  resources :crops
  resources :produces
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  resources :charges #stripe

  get 'registrations/after_sign_up_path_for'
  get 'static/dashboard'
  get 'static/orders'




  root 'static#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
