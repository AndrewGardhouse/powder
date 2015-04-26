Rails.application.routes.draw do

  resources :home, only: [:new, :create, :destroy]

  resources :videos do
    resources :comments, only: [:new, :create, :destroy]
  end

  resources :photos do
    resources :comments, only: [:new, :create, :destroy]
  end

  resources :locations do
    get :upvote
  end

  resources :users, only: [:new, :create, :edit, :destroy, :show]

  resources :questions do
    resources :answers, only: [:new, :create, :destroy]
  end

  resources :sessions, only: [:new, :create, :destroy]

  resources :bs_posts, only: [:new, :create, :show, :destroy]
  
  get 'posts/all' => 'bs_posts#index'
  get 'posts/:type' => 'bs_posts#index'

  get 'photo_tags/:tag', to: 'photos#index', as: :photo_tag
  get 'video_tags/:tag', to: 'videos#index', as: :video_tag
  get 'questions_tags/:tag', to: 'questions#index', as: :question_tag

  root to: 'home#index'

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
