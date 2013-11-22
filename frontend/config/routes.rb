::Rails.application.routes.draw do
  # scope :module => 'trax' do
  #   resources :channels, :shallow => true
  #   
  #   root :to => 'channels#index'
  # end
  
  scope :module => 'trax' do
    get '*path', to: 'entries#show', constraints: ::Trax::Core::StaticRouter::Entries
    get '*path', to: 'channels#show', constraints: ::Trax::Core::StaticRouter::Channels

    resources :channels, :path => 'c', :shallow => true do
      resources :entries
    end
        
    root :to => "channels#index"
  end
  

  
end

::Trax::Frontend::Engine.routes.draw do
end
