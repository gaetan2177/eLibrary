Rails.application.routes.draw do
  resources :article_reading_lists

  resources :reading_lists

  resources :articles

  root to: 'visitors#index'
end
