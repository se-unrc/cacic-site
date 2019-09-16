ActiveAdmin.register Registration do
  permit_params :email, :first_name, :last_name, :dni, :code, :course,
    :university, :province, :country, :category, :dinner, :scolarship

  index do
    column :email
    column :first_name
    column :last_name
    column :course
    column :dni
    column :code
    column :created_at

    column "" do |resource|
      links = ''.html_safe
      links += link_to I18n.t('active_admin.edit'), edit_resource_path(resource), :class => "member_link edit_link"
      links += link_to I18n.t('active_admin.delete'), resource_path(resource), :method => :delete, :confirm => I18n.t('active_admin.delete_confirmation'), :class => "member_link delete_link"
      links
    end
  end

  filter :code_present, :as => :boolean
  filter :dinner
  filter :course
  filter :email
  filter :first_name
  filter :last_name
  filter :university
  filter :city
  filter :province
end
