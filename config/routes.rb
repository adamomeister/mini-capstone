Rails.application.routes.draw do
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
  end
end
