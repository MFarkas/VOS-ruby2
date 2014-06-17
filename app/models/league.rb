class League < ActiveRecord::Base
  has_many :participates, foreign_key:  "league_id",dependent:  :destroy
  has_many :users, through: :participates, source: :user

  has_many :wheres, foreign_key: "league_id", dependent: :destroy
  has_many :locations, through: :wheres, source: :location

  has_many :hows, foreign_key: "league_id", dependent: :destroy
  has_many :disciplines, through: :hows, source: :discipline

  has_many :admins, foreign_key: "league_id", dependent: :destroy

  has_many :newsposts, foreign_key: "league_id", dependent: :destroy

  has_many :events, foreign_key: "league_id", dependent: :destroy

  def setDisc!(some_discipline)
    hows.create!(discipline_id: some_discipline.id)
  end
  def isAdmin?(some_user)
    admins.find_by(user_id: some_user.id)
  end
  def setAdmin!(some_user)
    admins.create!(user_id: some_user.id)
  end
  def kickAdmin!(some_user)
    admins.find_by(user_id: some_user.id).destroy
  end
  def participate(some_user)
    participates.create!(user_id: some_user.id)
  end
  def isParticipating?(some_user)
    participates.find_by(user_id: some_user.id)
  end
  def unparticipate!(some_user)
    participates.find_by(user_id: some_user.id).destroy
  end
  def hasDisc?(some_discipline)
    hows.find_by(discipline_id: some_discipline.id)
  end

  def unSetDisc!(some_discipline)
    hows.find_by(discipline_id: some_discipline.id).destroy
  end

  def place!(some_location)
    wheres.create!(location_id: some_location.id)
  end
  def placed?(some_location)
    wheres.find_by(location_id: some_location.id)
  end
  def displace!(some_location)
    wheres.find_by(location_id: some_location.id).destroy
  end
end
