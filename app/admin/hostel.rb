ActiveAdmin.register Hostel do

  # filter :facilities_id, :as => :check_boxes, :collection => proc {Facility.all}
  
  form do |f|
    f.inputs "Add New Hostel" do
      f.input :name_of_hostel
      f.input :location
      # f.input :facilities, :as => :check_boxes, collection: Facility.all   
    end

    f.has_many :facilities do |q|
      q.inputs "Facilities" do
        
        q.input :facilities, :as => :check_boxes, collection: Facility.all , :label=>:Select_Facilities
        
      end
    end

    f.actions
  end 
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # def permitted_params
  #   params.permit post: [:name_of_hostel, :location, :meta_keywords, :meta_description, :excerpt, facility_ids: []]
  # end
  permit_params :name_of_hostel, :location, facility_ids:[:id], facilities_attributes: [:id,:facility_type,:_update,:_create]

  
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
