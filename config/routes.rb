Rails.application.routes.draw do
  # Home page
  get "/", to: "home#index", as: :root

  # Link to all books
  get "/books", to: "books#index", as: :books
  # Link to all movies
  get "/movies", to: "movies#index", as: :movies
  # Link to all albums
  get "/albums", to: "albums#index", as: :albums

  # Link to specific media pages
  get "/movie/:id", to: "movies#show", as: :movie
  get "/album/:id", to: "albums#show", as: :album
  get "/book/:id", to: "books#show", as: :book


  # Link to new book form
  get "/books/new", to: "books#new", as: :new_book
  # Link to new movie form
  get "/movies/new", to: "movies#new", as: :new_movie
  # link to new album form
  get "/albums/new", to: "albums#new", as: :new_album

  # Increment count voting for objects
  patch "/books/:id", to: "books#update", as: :update_book
  patch "/movies/:id", to: "movies#update", as: :update_movie
  patch "/albums/:id", to: "albums#update", as: :update_album

  # Create new media objects
  post "/books", to: "books#create", as: :create_book
  post "/movies", to: "movies#create", as: :create_movie
  post "/albums", to: "albums#create", as: :create_albums




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
