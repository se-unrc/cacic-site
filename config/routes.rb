Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'landing/index'
  get 'static_pages/about'
  get 'static_pages/speakers'
  get 'static_pages/sponsors'

  root 'landing#index'
end
