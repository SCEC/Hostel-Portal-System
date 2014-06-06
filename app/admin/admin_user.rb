ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
# placing the menu items uder 
ActiveAdmin.register Hostel do
  menu :parent => "AdminUser"
end

ActiveAdmin.register Student do
  menu :parent => "AdminUser"
end
ActiveAdmin.register Facility do
  menu :parent => "Hostel"
end
ActiveAdmin.register RoomCategory do
  menu :parent => "Hostel"
end
ActiveAdmin.register RoomType do
  menu :parent => "Hostel"
end





