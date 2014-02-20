::Rails.application.routes.draw do
  scope :module => 'trax', :as => 'trax' do
    get '*path', to: 'entries#show', as: 'entry_permalink', constraints: ::Trax::Core::StaticRouter::Entries
    get '*path', to: 'channels#show',  as: 'channel_permalink', constraints: ::Trax::Core::StaticRouter::Channels

    resources :channels, :path => 'c', :shallow => true, :as => 'channel' do
      resources :entries, :as => 'entry'
    end

    root :to => "channels#index"
  end

end

::Trax::Frontend::Engine.routes.draw do
end
