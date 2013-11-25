::Rails.application.routes.draw do

  scope :module => 'trax' do
    namespace :admin do
      resources :channels
      resources :entries
      
      root :to => "channels#index"
    end
  end

end

::Trax::Admin::Engine.routes.draw do
end
