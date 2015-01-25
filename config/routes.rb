Rails.application.routes.draw do
  # get 'boxes/index(/*spec)', controller: 'boxes', action: 'index'
  get 'boxes/index(/*spec)' => 'boxes#index'
  get 'boxes', to: redirect('boxes/index')

  get 'flowers/show' => 'flowers#show'

  # optional parenthesis 
  get 'flowers/index(/:id)' => 'flowers#index', constraints: proc { |req| req.params[:id].to_i < 100 } 
  get 'flowers/index(/:id)' => 'flowers#error' 
  # get 'flowers/index(/:id)' => 'flowers#index', id: /\d+/

  # redirect to specific page
  get 'flowers', to: redirect('flowers/index')

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'flowers#index'

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
