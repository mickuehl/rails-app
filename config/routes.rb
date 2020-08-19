Rails.application.routes.draw do

  devise_for :accounts

  get 'dashboard', to: 'dashboard#index'

  root 'landing#index'

end
