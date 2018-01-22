Rails.application.routes.draw do
  namespace :admin do
    
    get 'account' => 'account#index', :as => :list_user
    get 'account/create' => 'account#new', :as => :new_user
    post 'account' => 'account#create', :as => :create_user
    get 'account/edit/:id' => 'account#edit', :as => :edit_user
    patch 'account/update/:id' => 'account#update', :as => :update_user
    get 'account/:id' => 'account#show', :as => :show_user
    post 'account/:id' => 'account#destroy', :as => :delete_user
  end
end
