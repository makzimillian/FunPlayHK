Rails.application.routes.draw do

  resources :categories

  devise_for :users
  resources :activities
  get '/contact', to: 'welcome#contact'


  root 'welcome#index'
end
