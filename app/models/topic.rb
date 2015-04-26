class Topic < ActiveRecord::Base
	  has_many :votes, dependent: :destroy


	  scope :five_days_ago, lambda { where("created_at >= :date", :date => 5.days.ago) }


	  scope :votes, lambda { Topic.all.votes sort_by: :asc }

end
