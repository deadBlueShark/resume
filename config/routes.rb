Rails.application.routes.draw do
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  root to: 'pages#home'
  resources :blogs
  resources :portfolios
end
