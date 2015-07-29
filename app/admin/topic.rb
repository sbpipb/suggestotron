ActiveAdmin.register Topic do
	permit_params :title, :description
	# permit_params do
	#   permitted = [:permitted, :attributes]
	#   permitted << :other if resource.something?
	#   permitted
	# end
end