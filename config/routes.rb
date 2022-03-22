Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "products#index"
  get 'products.json', to: 'products#list'
  get '/products/:id/buy', to: 'products#buy', as: 'buy'
  get '/checkout', to: 'products#checkout', as: 'checkout'
  
  # get "/products", to:"products#index"
  # get "/products/:id", to: "products#show"
  
  resources :products do
    resources :reviews
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
