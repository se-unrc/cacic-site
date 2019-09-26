Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'landing/index'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/meeting'
  get 'static_pages/sponsors'

  get 'static_pages/cfp'
  get 'static_pages/download_cpf'
  get 'static_pages/accepted_paper'
  get 'static_pages/download_accepted_paper'
  get 'static_pages/schedule'


# workshops download
  get 'download_schedule/:id', to: 'static_pages#download_schedule', as: 'download_schedule'
  get 'static_pages/download_schedule_wis'
  # get 'static_pages/download_schedule_gobierno_digital'
  # get 'static_pages/download_schedule_wasi'
  # get 'static_pages/download_schedule_wpdp'
  # get 'static_pages/download_schedule_wtiae'
  # get 'static_pages/download_schedule_computacion_grafica'
  # get 'static_pages/download_schedule_wbdmb'
  # get 'static_pages/download_schedule_warso'
  # get 'static_pages/download_schedule_wiss'
  # get 'static_pages/download_schedule_wpsstr'
  # get 'static_pages/download_schedule_wsi'
  # get 'static_pages/download_schedule_wiei'


  get 'static_pages/workshops'
  get 'static_pages/inscription'

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
