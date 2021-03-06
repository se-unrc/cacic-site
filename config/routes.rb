Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'landing#index'

  get '/:locale' => 'landing#index'

  scope "(:locale)", locale: /es|en/ do
    get 'landing/index'
    get 'static_pages/about'
    get 'static_pages/contact'
    get 'static_pages/sponsors'

    get 'static_pages/cfp'
    get 'static_pages/download_cpf'
    get 'static_pages/accepted_paper'
    get 'static_pages/download_accepted_paper'
    get 'static_pages/schedule'
   

  #   # workshops download
    get 'download_schedule/:id', to: 'static_pages#download_schedule', as: 'download_schedule'


    get 'static_pages/download_slides1_course4'
    get 'static_pages/download_slides2_course4'
    get 'static_pages/download_slides3_course4'
    get 'static_pages/download_slides4_course4'
    get 'static_pages/download_requals_course4'
    get 'static_pages/download_requals_buggy_course4'
    get 'static_pages/download_lista_course4'
    get 'static_pages/download_bin_tree_course4'
    get 'static_pages/download_arbol_binario_course4'
    get 'static_pages/download_bin_tree_test_course4'
    get 'static_pages/download_node_course4'
    get 'static_pages/download_tutorial_course4'

    get 'static_pages/download_result_course3'



    get 'static_pages/workshops'
    get 'static_pages/inscription'
    get 'static_pages/school'
    get 'static_pages/talks'
    get 'static_pages/athenaeum'
    get 'static_pages/accommodation'
    get 'static_pages/transport'
    get 'static_pages/guest_talk'
    get 'static_pages/panel'
    get 'static_pages/banquet'
    get 'static_pages/maps'


    get 'static_pages/download_slides_course4'

    get 'workshops/:slug', to: 'workshops#show'

    get 'static_pages/format_paper'
    resources :paper_format_download,
      only: :show,
      controller: 'static_pages',
      action: 'download_paper_format'

  #   get 'registration', to: 'inscriptions#new'
  #   post 'registration', to: 'inscriptions#create'
  end
end
