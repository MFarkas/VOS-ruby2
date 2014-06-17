class How < ActiveRecord::Base
  belongs_to :discipline, class_name: "Discipline"
  belongs_to :league, class_name: "League"
  validates :discipline_id, presence: true
  validates :league_id, presence: true
end
