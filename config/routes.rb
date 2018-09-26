Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :contacts
  resources :items

  root 'pages#index'

  get 'pages/contact', to: 'pages#contact'
  get 'pages/about', to: 'pages#about'

end
