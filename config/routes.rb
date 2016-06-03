Rails.application.routes.draw do
  resources :agencies do
    resources :properties
  end

  root to: 'agencies#index'
end
