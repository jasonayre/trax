::Rails.application.routes.draw do
  devise_for :users, :class_name => "::Trax::User"
  ActiveAdmin.routes(self)
end

::Trax::Backend::Engine.routes.draw do
end
