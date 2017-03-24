Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "posts#index"
get "/", to: "posts#index"

get "/new", to: "posts#new"
get "/:id", to: "posts#show", as: :post
post "posts", to: "posts#create"


######### comment routes

post "/comments", to: "comments#create"




end
