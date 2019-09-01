Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'landing/index'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/speakers'
  get 'static_pages/sponsors'

  get 'static_pages/cfp'
  get 'static_pages/download_cpf'
  get 'static_pages/workshops'

  get 'static_pages/school'
  get 'static_pages/talks'

  get 'static_pages/athenaeum'

  get 'static_pages/accommodation'
  get 'static_pages/transport'

  get 'workshops/:slug', to: 'workshops#show'

  get 'static_pages/format_paper'
  resources :paper_format_download,
    only: :show,
    controller: 'static_pages',
    action: 'download_paper_format'


  root 'landing#index'

  get 'registration', to: 'inscriptions#new'
  post 'registration', to: 'inscriptions#create'
end
