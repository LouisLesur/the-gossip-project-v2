Rails.application.routes.draw do
  root'home#index', as: "home"

  get "/dashboard", to: "home#dashboard", as: "dashboard"
  patch "/dashboard", to: "home#dashboard"
  get "/generateur", to:"home#generateur", as:"generateur"

  resources :user
  resources :sessions

  resources :gossip do
    resources :comment
    resources :like, only: [:create, :destroy]

  end

  get "/team", to: "static_page#team", as: "team"
  get "/contact", to: "static_page#contact", as: "contact"
end
