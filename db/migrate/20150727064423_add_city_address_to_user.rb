class AddCityAddressToUser < ActiveRecord::Migration
  def change
    add_column :users, :city, :string
    add_column :users, :address, :text
  end
end
