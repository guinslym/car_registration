# == Route Map
#
#                   Prefix Verb   URI Pattern                       Controller#Action
#          information_bon GET    /information/bon(.:format)        information#bon
#      information_mechant GET    /information/mechant(.:format)    information#mechant
#                     root GET    /                                 home#index
#        confirmations_new GET    /confirmations/new(.:format)      confirmations#new
#     confirmations_create GET    /confirmations/create(.:format)   confirmations#create
#               home_index GET    /home/index(.:format)             home#index
#         new_user_session GET    /users/sign_in(.:format)          devise/sessions#new
#             user_session POST   /users/sign_in(.:format)          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy
#            user_password POST   /users/password(.:format)         devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
#                          PATCH  /users/password(.:format)         devise/passwords#update
#                          PUT    /users/password(.:format)         devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)           devise/registrations#cancel
#        user_registration POST   /users(.:format)                  devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)          devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)             devise/registrations#edit
#                          PATCH  /users(.:format)                  devise/registrations#update
#                          PUT    /users(.:format)                  devise/registrations#update
#                          DELETE /users(.:format)                  devise/registrations#destroy
#        user_confirmation POST   /users/confirmation(.:format)     confirmations#create
#    new_user_confirmation GET    /users/confirmation/new(.:format) confirmations#new
#                          GET    /users/confirmation(.:format)     confirmations#show
#                 vehicles GET    /vehicles(.:format)               vehicles#index
#                          POST   /vehicles(.:format)               vehicles#create
#              new_vehicle GET    /vehicles/new(.:format)           vehicles#new
#             edit_vehicle GET    /vehicles/:id/edit(.:format)      vehicles#edit
#                  vehicle GET    /vehicles/:id(.:format)           vehicles#show
#                          PATCH  /vehicles/:id(.:format)           vehicles#update
#                          PUT    /vehicles/:id(.:format)           vehicles#update
#                          DELETE /vehicles/:id(.:format)           vehicles#destroy
#                    hello GET    /hello(.:format)                  vehicles#new
#                   people GET    /people(.:format)                 people#index
#                          POST   /people(.:format)                 people#create
#               new_person GET    /people/new(.:format)             people#new
#              edit_person GET    /people/:id/edit(.:format)        people#edit
#                   person GET    /people/:id(.:format)             people#show
#                          PATCH  /people/:id(.:format)             people#update
#                          PUT    /people/:id(.:format)             people#update
#                          DELETE /people/:id(.:format)             people#destroy
#                          GET    /*path(.:format)                  redirect(301, /)
#

CarRegistration::Application.routes.draw do
  root 'home#home'
  get "confirmations/new"
  get "confirmations/create"
  get "home/home"

  devise_for :users, :controllers => { :confirmations => 'confirmations' }
  
  resources :vehicles
  get "/hello", :to => "vehicles#new"

  resources :people

  get "*path" => redirect("/")


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
