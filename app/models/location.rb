#encoding: utf-8
class Location < ActiveRecord::Base
  has_many :wheres, foreign_key: "location_id", dependent: :destroy
  has_many :leagues, through: :wheres, source: :league

  has_many :reverse_wheres, foreign_key:  "location_id",
                            class_name: "where",
                            dependent:  :destroy
  has_many :leagues, through:  :reverse_wheres, source: :league
end
