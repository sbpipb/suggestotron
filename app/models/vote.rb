class Vote < ActiveRecord::Base
	belongs_to :topic, dependent: :destroy
	# ,
    # counter_cache: true
end
