HPS::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "welcome/index"
  get "welcome/contact"
  get "welcome/about"
  get "welcome/login"
  get "welcome/faq"
  get "home/index"

  # new link for welcome page
  get "welcome/reservation"
  post "welcome/reservation"
  
  get "welcome/find_hostel"
  get "welcome/get_hostels_from_country"
  get "/welcome/get_hostels_from_city_id"
  get "welcome/find_hostel_from_id"
  get "welcome/get_rooms_within_hostel"
  get "welcome/get_first_available_room"

  get "welcome/hostels"
  # user controller routes
  get "user/new"
  post "user/create"
  
  # student user session controller routes
  get "st_user_sessions/login"
  get "st_user_sessions/logout"
  get "st_user_sessions/home"
  get "st_user_sessions/profile"
  get "st_user_sessions/setting"
  post "st_user_sessions/login_attempt"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
