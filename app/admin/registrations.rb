ActiveAdmin.register Registration do
  index do
    column :email
    column :first_name
    column :last_name
    column :course
  end
end
