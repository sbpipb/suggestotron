class Topic < ActiveRecord::Base
  has_many :votes, dependent: :destroy
  belongs_to :user

  scope :five_days_ago, lambda { where("created_at >= :date", :date => 5.days.ago) }
end
