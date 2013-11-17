::Rails.application.routes.draw do
  devise_for :users, :class_name => "Trax::User"
  ActiveAdmin.routes(self)
  
  # ::ActiveAdmin.routes(self)
  # devise_for :admin_users, :class_name => "Trax::User"
end

::Trax::Backend::Engine.routes.draw do
end
