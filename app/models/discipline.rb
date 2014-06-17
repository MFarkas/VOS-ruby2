#encoding: utf-8
class Discipline< ActiveRecord::Base
  has_many :hows, foreign_key: "discipline_id", dependent: :destroy
  has_many :leagues, through: :hows, source: :league

  has_many :reverse_hows, foreign_key:  "discipline_id",
           class_name: "how",
           dependent:  :destroy
  has_many :leagues, through:  :reverse_hows, source: :league
end
