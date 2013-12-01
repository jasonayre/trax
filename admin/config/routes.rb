::Rails.application.routes.draw do

  scope :module => 'trax' do
    namespace :admin do
      resources :channels, :except => [:edit]
      resources :entries, :except => [:edit]
      resources :menus
      resources :menu_items
      
      root :to => "dashboard#index"
       
    end
    
    match 'admin/channels/*all' => 'admin/dashboard#index', :via => [:get]
    
   
  end

end

::Trax::Admin::Engine.routes.draw do
end
