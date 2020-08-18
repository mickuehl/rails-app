Rails.application.routes.draw do

  root 'landing#index'

  devise_for :accounts, skip: :all
  devise_scope :account do
    get 'login', to: 'devise/sessions#new'
    post 'login', to: 'devise/sessions#create'
    delete 'logout', to: 'devise/sessions#destroy'
    
    get 'register', to: 'devise/registrations#new'
    post 'register', to: 'devise/registrations#create'
  end

end
