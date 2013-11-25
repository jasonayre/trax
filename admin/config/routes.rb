::Rails.application.routes.draw do

  scope :module => 'trax' do
    namespace :admin do
      resources :channels
      resources :entries
      resources :menus
      resources :menu_items
      
      root :to => "dashboard#index"
    end
  end

end

::Trax::Admin::Engine.routes.draw do
end
