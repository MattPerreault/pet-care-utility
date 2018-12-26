Rails.application.routes.draw do

 # root is set to the home controller for the index action
 root "home#index"
 
 # get route new login session
 get '/login', to: 'sessions#new'
 post '/login', to: "sessions#create"
 delete '/logout', to: "sessions#destroy"


 # get route to new user page
 resources :users
 get '/signup', to: 'users#new'
 get '/users/:id', to: "users#show", as: 'show_user'
 patch '/users/:id', to: "users#update", as: 'update_user'
 post '/users', to: "users#create"
 delete '/users', to: "users#destroy"

 
get '/pets', to: 'pets#new'
get '/pets/:id', to: "pets#show"
post '/pets', to: "pets#create"
delete '/pets', to: "pets#destroy"

get '/pet-stores', to: 'locations#index'
get '/vets', to: 'locations#vet'

end
