class Participate < ActiveRecord::Base
  validates :user_id, uniqueness: { :scope => [:league_id],
      message: "You are already participating"}
  belongs_to :league, class_name: "League"
  belongs_to :user, class_name: "User"


end
