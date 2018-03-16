Rails.application.routes.draw do
  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'
  root to: 'pages#home'
  resources :blogs

  # Implement custom routes for show portfolio
  resources :portfolios, except: :show
  get "/portfolio/:id", to: "portfolios#show", as: "show_portfolio"
end
