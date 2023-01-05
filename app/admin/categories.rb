ActiveAdmin.register Category do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :image
  #
  # or
  #
  form do |m|
    m.inputs do
      m.input :name
      m.input :image, as: :file 
    end  
    actions
  end  
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    column "Image" do |category|
      image_tag category&.image, class: 'my_image_size', style: "width:150px; height:150px;"
    end
    column :name
  end
end
