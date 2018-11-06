Rails.application.routes.draw do
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  get '/products/:id' => 'products#show'
  post '/products' => 'products#create'
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/products/:id' => 'products#show'
    get '/products' => 'products#index'
    post '/products' => 'products#create'
    #update
    #delete
    post '/users' => 'users#create'
    post '/sessions' => 'sessions#create'
    get '/orders' => 'orders#index'
    post '/orders' => 'orders#create'
    post '/cart' => 'carted_products#create'
    get '/cart' => 'carted_products#index'
  end
end
