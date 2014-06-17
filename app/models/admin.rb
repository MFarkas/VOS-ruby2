class Admin < ActiveRecord::Base
    belongs_to :user, class_name: "User"
    belongs_to :league, class_name: "League"
    validates :user_id, presence: true
    validates :league_id, presence: true
end
