Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 # # Read all
 get    "lists",          to: "lists#index"
 # # Create
 get    "lists/new",      to: "lists#new",  as: :new_list
 post   "lists",          to: "lists#create"
 # # Read one - The `show` route needs to be *after* `new` route.
 get    "lists/:id",      to: "lists#show", as: :list
 # # Update
 # get    "lists/:id/edit", to: "lists#edit", as: :edit_list
 # patch  "lists/:id",      to: "lists#update"
 # # Delete
 #delete "lists/:id",      to: "lists#destroy"

 # get    "lists/id:/new",      to: "bookmarks#new",  as: :new_bookmark
 # post   "lists/id:",          to: "bookmarks#create"

 resources :lists, only: [] do
  resources :bookmarks, only: [:new, :create]
 end
 resources :bookmarks, only: [:destroy]
end