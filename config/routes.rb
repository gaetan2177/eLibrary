Rails.application.routes.draw do
  resources :reading_lists

  resources :articles

  root to: 'visitors#index'
end
