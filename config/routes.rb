Rchon::Application.routes.draw do
  resources :research_appointment_materials

  resources :collection_location_entries

  resources :creator_book_relationships

  resources :accession_location_entries

  resources :creator_accession_relationships

  resources :collections

  resources :digital_content_files

  resources :digital_content_creator_relationships

  resources :collection_creator_relationships

  resources :digital_contents

  resources :user_fields

  resources :resarch_carts

  resources :research_appointments

  resources :research_appointment_purposes

  resources :material_types

  resources :locations

  resources :level_containers

  resources :extent_units

  resources :collection_contents

  resources :classifications

  resources :books

  resources :processing_priorities

  resources :accessions

  resources :repositories

  resources :subject_sources

  resources :subjects

  resources :creator_relationships

  resources :creators

  resources :creator_sources

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
