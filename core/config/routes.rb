::Rails.application.routes.draw do
  ::ActiveAdmin.routes(self)
  devise_for :admin_users, :class_name => "Trax::AdminUser"
end

Trax::Core::Engine.routes.draw do
  resources :channels
end
