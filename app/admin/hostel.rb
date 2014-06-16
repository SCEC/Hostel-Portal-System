ActiveAdmin.register Hostel do

  # filter :facilities_id, :as => :check_boxes, :collection => proc {Facility.all}
  permit_params :name_of_hostel, 
                :location, 
                :city_id,
                :description,
                facility_ids: []
                
  form do |f|
    f.inputs
    f.inputs "Add Facility" do
      f.input :facilities, 
              :label => "Facilities available",
              as: :check_boxes, collection: Facility.all
    end

    f.actions
  end 
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
