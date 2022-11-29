Rails.application.routes.draw do
  devise_for :parent_users
  root to: "pages#home"
  get 'dashboard', to: 'pages#dashboard'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :parents_users, only: [] do
    member do
      get :dashboard
    end
  end

end
