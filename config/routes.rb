Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#homepage"
  get '/homepage', to: "home#homepage"
  get '/team', to: "home#team"
  get '/list', to: "home#list"
  get '/blog', to: "home#blog"
  get 'post/create'
  post 'post/store', to: "home#post"

  post '/cats', to: "home#create"
  post '/additem', to: "home#additems"
  post '/newproduct', to: "home#newproduct"

  # routes for viewing and buying products (Products Controller)
  get '/products', to: 'product#index', as: 'storefront'
  get '/products/:id/buy', to: 'product#add_to_cart', as: 'add_to_cart'
  get '/products/cart', to: 'product#view_cart', as: 'view_cart'
  get '/products/checkout', to: 'product#checkout', as: 'checkout'
  get '/products/api', to: 'product#api'

end
