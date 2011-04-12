Bankonet::Application.routes.draw do

  scope "/:locale" do

    devise_for :users
    devise_for :managers

    resource :profile, :only => [:edit, :update]
    resources :accounts, :only => [:index, :show, :edit, :update]
    resources :operations, :only => [:index]
    resources :transfers, :only => [:index, :show, :new, :create]
    resource :statement, :only => [:show]

    namespace "admin" do

      resource :profile, :only => [:edit, :update]
      resources :users do
        resources :accounts, :only => [:index, :new, :create]
        resources :operations, :only => [:index]
        resources :transfers, :only => [:index, :new, :create]
      end

      resources :transfers, :only => [:show]

      resources :accounts, :except => [:index, :new, :create] do
        resources :credits, :only => [:new, :create]
        resources :debits, :only => [:new, :create]        
      end
      
      root :to => "home#index"

    end
    
    # Devise need a {resource}_root
    match "admin" => "admin/home#index", :as => "manager_root"
    
    root :to => "home#index"
    
  end
  
end