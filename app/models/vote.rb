class Vote < ActiveRecord::Base
	belongs_to :topic, dependent: :destroy
	belongs_to :user, dependent: :destroy	
	# ,
    # counter_cache: true
end
