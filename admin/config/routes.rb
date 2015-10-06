Rails.application.routes.draw do
  resources :pacientes
  resources :usuarios
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  get 'login' => 'login#login'
  get 'logout' => 'login#logout'
  post 'logar' => 'login#logar'

  get 'medicos' => 'medicos#index'
  get 'medico/cadastrar' => 'medicos#new', as: :new_medico
  get 'medico/:id' =>'medicos#show', as: :medico
  get 'medico/:id/editar' => 'medicos#edit', as: :edit_medico
  patch 'medico/:id' => 'medicos#update'
  delete 'medico/:id' => 'medicos#destroy'
  post 'medicos' => 'medicos#create'

  get 'sobre' => 'about#index'

  get 'tipos' => 'tipos#index'
  get 'tipos/:id/editar' => 'tipos#edit', as: :editar_tipo
  post 'tipos/:id/update' => 'tipos#update', as: :tipo_update
  get 'tipos/:id' => 'tipos#show', as: :tipo
  delete 'tipos/:id/delete' => 'tipos#delete', as: :tipo_delete
  get 'tipo/novo' => 'tipos#new', as: :tipo_new
  post 'tipo/criar' => 'tipos#criar', as: :tipo_criar

  get 'visitas' => 'visitas#index', as: :visita_index
  get 'visitas/novo' => 'visitas#new', as: :visita_new
  post 'visitas/criar' => 'visitas#criar', as: :visita_criar
  get 'visitas/:id' => 'visitas#show', as: :visita
  get 'visitas/:id/editar' => 'visitas#edit', as: :edit_visita
  post 'visitas/:id' => 'visitas#update', as: :visita_update
  delete 'visitas/:id/delete' => 'visitas#delete', as: :visita_delete


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
