ActiveAdmin.register Facility do

  # belongs_to :hostel
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :facility_type
  # index do
  #   column :facility_type
  #   actions
  # end
  filter :facility_type
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
