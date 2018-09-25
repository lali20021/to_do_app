Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :contacts 
  root 'pages#index'
  get 'pages/contact'
  get 'pages/about'
end
