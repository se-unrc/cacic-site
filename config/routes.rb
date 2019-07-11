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

  get 'workshops/agentes_y_sistemas_inteligentes'
  get 'workshops/procesamiento_distribuido_y_paralelo'
  get 'workshops/tecnologia_informatica_aplicada_en_educacion'
  get 'workshops/computacion_grafica_imagenes_y_visualizacion'
  get 'workshops/ingenieria_de_software'
  get 'workshops/bases_de_datos_y_mineria_de_datos'
  get 'workshops/arquitectura_redes_y_sistemas_operativos'
  get 'workshops/innovacion_en_sistemas_de_software'
  get 'workshops/procesamiento_de_senales_y_sistemas_de_tiempo_real'
  get 'workshops/seguridad_informatica'
  get 'workshops/innovacion_en_educacion_en_informatica'
  get 'workshops/track_gobierno_digital_y_ciudades_inteligentes'

  get 'static_pages/format_paper'
  resources :paper_format_download,
    only: :show,
    controller: 'static_pages',
    action: 'download_paper_format'


  root 'landing#index'
end
