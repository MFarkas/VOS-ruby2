class Event < ActiveRecord::Base
  belongs_to :league, class_name: "League"

  has_many :part_in_events, foreign_key: "event_id"
  has_many :users, through: :part_in_events, source: :user

  accepts_nested_attributes_for :part_in_events

end
