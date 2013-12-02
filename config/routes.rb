Example::Application.routes.draw do
  resources :orders

  root "home#index"

  mount Raddocs::App => "/docs"
end
