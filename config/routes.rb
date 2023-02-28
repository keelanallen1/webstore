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
end
