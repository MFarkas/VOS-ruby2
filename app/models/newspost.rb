class Newspost < ActiveRecord::Base
  belongs_to :league, class_name: "League"
end
