ActiveAdmin.register User do

permit_params :email, :city, :address, :password
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  form do |f|
    f.inputs "Basic Information" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :city
      f.input :address      
    end

    f.actions
  end


end
