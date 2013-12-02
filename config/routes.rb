Example::Application.routes.draw do
  resources :orders

  mount Raddocs::App => "/docs"
end
