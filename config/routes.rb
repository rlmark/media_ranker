Rails.application.routes.draw do
  # Home page
  get "/", to: "home#index", as: :root

  # Links to all media specific pages
  get "/books", to: "books#index", as: :books
  get "/movies", to: "movies#index", as: :movies
  get "/albums", to: "albums#index", as: :albums

  # Link to form for creation of new media objects
  get "/books/new", to: "books#new", as: :new_book
  get "/movies/new", to: "movies#new", as: :new_movie
  get "/albums/new", to: "albums#new", as: :new_album

  # Create new media objects
  post "/books", to: "books#create", as: :create_book
  post "/movies", to: "movies#create", as: :create_movie
  post "/albums", to: "albums#create", as: :create_albums

  # Link to specific, singular media object pages
  get "/books/:id", to: "books#show", as: :book
  get "/movies/:id", to: "movies#show", as: :movie
  get "/albums/:id", to: "albums#show", as: :album

  # Increment count voting for objects
  patch "/books/:id", to: "books#update", as: :update_book
  patch "/movies/:id", to: "movies#update", as: :update_movie
  patch "/albums/:id", to: "albums#update", as: :update_album

  # Go to edit form for media objects
  get "/books/:id/edit", to: "books#edit", as: :edit_book
  get "/movies/:id/edit", to: "movies#edit", as: :edit_movie
  get "/albums/:id/edit", to: "albums#edit", as: :edit_album
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
