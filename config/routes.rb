Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login', sign_out: 'logout', sign_up: 'register'
  }

  root to: 'pages#home'

  get 'computer', to: 'pages#computer'
  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'

  resources :topics
  resources :blogs do
    member do
      get :change_status
    end
  end
  resources :portfolios, except: :show do
    collection do
      patch :sort
    end
  end

  get '/portfolio/:id', to: 'portfolios#show', as: 'show_portfolio'
end
