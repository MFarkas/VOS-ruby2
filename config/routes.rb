Rails.application.routes.draw do
  root 'static_pages#home'
  resources :users do
    member do
      get 'participations'
      get 'events'
    end
  end
  resources :newsposts
  resources :sessions, only: [:new,:create,:destroy]
  resources :part_in_events do
    member do
      get 'pick'
      get 'unpick'
    end
  end
  resources :events
  resources :participates do
    member do
      get 'qualify'
      get 'disqualify'
    end
  end
  resources :leagues do
    member do
      get 'participants'
      get 'manage'
      get 'events'
      get 'closeevent'
      get 'leaderboards'
    end
  end
  get 'static_pages/home'
  get 'static_pages/contact'
  #match 'leagues/:id/participants', to: 'leagues#participants', via: 'get'
  post  '/leagues/:id', to: 'leagues#show'
  match '/searchleague', to: 'leagues#search', via: 'get'
  match '/newleague' ,  to: 'leagues#new' ,         via: 'get'
  match '/signin' ,  to: 'sessions#new' ,         via: 'get'
  match '/signout' , to: 'sessions#destroy' ,     via: 'delete'
  match '/home' , to: 'static_pages#home' , via: 'get'
  match '/help' , to: 'static_pages#help' , via: 'get'
  match '/signup' , to: 'users#new' , via: 'get'

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
