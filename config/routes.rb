SampleApp::Application.routes.draw do

  resources :posts

  resources :sessions, only: [:new, :create, :destroy]

  resources :users do
    get :remove
    put :removal
    resources :posts
  end

  root to: "static_pages#home", as: "root"

  match "/signup", to: 'users#new', as: "signup"

  match "/signin", to: "sessions#new", as: "signin"

  match "/signout", to: "sessions#destroy", via: :delete, as: "signout"

  match "/help", to: "static_pages#help", as: "help"

  match "/contact", to: "static_pages#contact", as: "contact"

  match "/about", to: "static_pages#about", as: "about"
  # as: "about" about_path

end
