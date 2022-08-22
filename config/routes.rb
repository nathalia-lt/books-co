Rails.application.routes.draw do
  resources :users
  resources :shelves, only: [:create,:destroy]
  resources :reviews, only: [:index,:destroy,:create,:update]
  resources :reactions, only: [:destroy,:create]
  resources :bookclubs, only: [:index,:destroy,:create,:update]
  resources :clubusers, only: [:create,:destroy]

  #Authentication
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  #User
  post "/addtocurrent", to: "users#add_to_current"
  post "/removefromcurrent", to: "users#remove_from_current"

  #Shelf
  get "/usershelves", to: "shelves#user_shelves"
  post "/addbook", to: "shelves#add_book"
  post "/removebook", to: "shelves#remove_book"
  post "/deleteshelf", to: "shelves#destroy"
  post "/clearstatus", to: "shelves#clear_status"
  post "/updatestatus", to: "shelves#update_status"

  #Review
  post "/allbookreviews", to: "reviews#find_all_book_reviews"
  post "/removereview", to: "reviews#destroy"

  #Reaction
  # post "createreaction", to: "reactions#create"
  post "removereaction", to: "reactions#remove_reaction"

  #Bookclub
  post 'addbooktoclub', to: "bookclubs#add_book"
  post 'removebookfromclub', to: "bookclubs#remove_book"

  #Clubuser
  post 'removeclubuser', to: "clubusers#destroy"
   
end