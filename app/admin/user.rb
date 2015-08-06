ActiveAdmin.register User do
  menu parent: "Accounts"  
  permit_params :email, :city, :address, :password
  
  filter :email
    index do
      selectable_column
      id_column
      column :email
      column :city
      column :address
      column :created_at
      # column :updated_at
      column :last_sign_in_at
      actions
    end

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
