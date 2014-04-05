SampleApp::Application.routes.draw do
  resources :posts

  resources :users do
    get :remove
    put :removal
    resources :posts
  end

  get "static_pages/home"

  get "static_pages/help"

  get "static_pages/about"

  get "static_pages/contact"

  root :to => 'welcome#index'

  get "/about", to: "static_pages#about", as: "about"
  # as: "about" about_path

end
