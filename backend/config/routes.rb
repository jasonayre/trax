::Rails.application.routes.draw do
  ::ActiveAdmin.routes(self)
end

::Trax::Backend::Engine.routes.draw do
end
