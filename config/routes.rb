Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, :class_name => "Trax::AdminUser"

  # devise_for :users, :class_name => "::Trax::User"
  # ActiveAdmin.routes(self)
   # ActiveAdmin.routes(self)
end
Trax::Engine.routes.draw do
  # ActiveAdmin.routes(self)
  # devise_for :admin_users, :class_name => "Trax::AdminUser"

  resources :channels
end
