Rails.application.routes.draw do
  devise_for :users
  get 'registrations/after_sign_up_path_for'

  get 'static/index'
  get 'static/dashboard'

  root 'static#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
