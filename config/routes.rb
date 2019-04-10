Rails.application.routes.draw do

  root 'access#menu'
  get 'admin', to: 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  resources :users
  resources :gymsites

end
