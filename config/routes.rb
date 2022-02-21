Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "products#index"
  
  # get "/products", to:"products#index"
  # get "/products/:id", to: "products#show"
  
  resources :products do
    resources :reviews
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
