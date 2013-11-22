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

    # get ':id', :to => 'entries#show'
    
    # ::Trax::Channel.by_routing_strategy('PERMALINK').each do |channel|
    #   
    #   channel.entries.each do |entry|
    #     puts entry.inspect
    #     get entry.slug, :to => 'entries#show'
    #   end
    # end
    
    # ::Trax::Entry.by_routing_strategy(:permalink).each do |entry|
    #   get entry.permalink, 'entries#show'
    # end
    
    root :to => "channels#index"
  end
  

  
end

::Trax::Frontend::Engine.routes.draw do
end
