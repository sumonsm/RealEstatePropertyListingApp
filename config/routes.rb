Rails.application.routes.draw do
  resources :agencies do
    resources :properties
  end

  get 'search', to: 'search#search'

  root to: 'agencies#index'
end
