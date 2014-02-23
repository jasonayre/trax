::Rails.application.routes.draw do

  scope :module => 'trax' do
    namespace :admin do
      resources :channels, :except => [:edit] do
        resources :tags
        
        resources :entries, :except => [:edit] do
          resources :tags
        end
      end
      resources :entries, :except => [:edit] do
        resources :tags
      end
      resources :menus
      resources :menu_items
      # resources :tags
      
      root :to => "dashboard#index"
    end
    
    # match 'admin/*all' => 'admin/dasboard#index', :via => [:get]    
    match 'admin/channels/*all' => 'admin/dashboard#index', :via => [:get]
    match 'admin/entries/*all' => 'admin/dashboard#index', :via => [:get]
  end

end

::Trax::Admin::Engine.routes.draw do
end
