Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :merchants, only: [:index, :show] do
    
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
