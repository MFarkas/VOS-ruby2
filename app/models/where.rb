class Where < ActiveRecord::Base
  belongs_to :location, class_name: "Location"
  belongs_to :league, class_name: "League"
  validates :location_id, presence: true
  validates :league_id, presence: true
end
