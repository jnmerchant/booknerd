Rails.application.routes.draw do
  root :to => 'welcome#index'

  resources :books
  resources :libraries
  resources :users, except: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end