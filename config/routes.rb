Rails.application.routes.draw do

  resources :media do
    resources :media_comments
  end

  resources :locations, only:[:show, :edit, :destroy] do
    resources :location_comments, only: [:new, :create, :destroy]
  end

  resources :users

  resources :questions do
    resources :answers, only: [:new, :create, :destroy]
  end

  resources :bs_posts

  root to: 'media#index'

  get 'groundworkdocs/animations'

  get 'groundworkdocs/boxes'

  get 'groundworkdocs/breakpoints'

  get 'groundworkdocs/buttons'

  get 'groundworkdocs/forms'

  get 'groundworkdocs/grid'

  get 'groundworkdocs/helpers'

  get 'groundworkdocs/home'

  get 'groundworkdocs/icons'

  get 'groundworkdocs/layout_a'

  get 'groundworkdocs/layout_b'

  get 'groundworkdocs/layout_c'

  get 'groundworkdocs/media_queries'

  get 'groundworkdocs/messages'

  get 'groundworkdocs/navigation'

  get 'groundworkdocs/placeholder_text'

  get 'groundworkdocs/responsive_text'

  get 'groundworkdocs/tables'

  get 'groundworkdocs/tabs'

  get 'groundworkdocs/typography'

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
