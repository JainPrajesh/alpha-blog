Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home' 
  get 'about', to: 'pages#about'
  #this will give all the routes for articles
  #"Only" will show the show route
  resources :articles, only: [:show, :index]
  # Defines the root path route ("/")
end
