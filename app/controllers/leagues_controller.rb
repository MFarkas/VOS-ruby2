class LeaguesController < ApplicationController
  def new
    @league= League.new
  end

  def create
    @league= League.new(league_params)
    @league.save!
    li= Location.find_by(id: league_params[:loc])
    if li.name == " Other"
      l=Location.new(:name => league_params[:slocation])
      l.save!
      @league.place!(l)
    else
    l = Location.where("id = ? ", league_params[:loc]).first
      @league.place!(l)

    end

    di= Discipline.find_by(id: league_params[:discipline_id])
    if di.name = " Other"
      d=Discipline.new(:name => league_params[:sdiscipline])
      d.save!
      @league.setDisc!!(d)
    else
    d= Discipline.where("id = ? ", league_params[:discipline_id]).first
    @league.setDisc!(d)
    end
    @league.setAdmin!(current_user)
    @league.save!
    redirect_to @league
  end
  def show
    @league =League.find(params[:id])
    @participate= Participate.new()
  end
  def edit
    @league =League.find(params[:id])
  end
  def manage
    @league =League.find(params[:id])
    @newspost= @league.newsposts.new()
    @newspost.league_id= @league.id
    @event= @league.events.new()
    #@newsposts= Newspost.new()
  end
  def search
    @leagues = League.joins('JOIN wheres ON wheres.league_id = leagues.id')
                      .joins('JOIN locations ON wheres.location_id = locations.id')
                      .joins('JOIN hows ON hows.league_id = leagues.id')
                      .joins('JOIN disciplines ON hows.discipline_id = disciplines.id')
                      .where("wheres.location_id = ? AND hows.discipline_id = ? ", params[:location_id],params[:discipline_id]).paginate(page: params[:page])

    #@leagues= League.all.paginate(page: params[:page])
  end
  def searchleague
    @leagues= League.where("slocation = ?", Location.find(params[:location_id]).name)
  end
  def participate
    @league.participate(current_user)
    #@league.name= "Kurva!"
    @league.save
    redirect_to @league
  end
  def participants
    @league=League.find(params[:id])
    #@league.users= @league.users.paginate(page: params[:page]) # User.paginate(page: params[:page])
    @participants= @league.participates.paginate(page: params[:page])
    #@league.save
  end
  def index
    @leagues = League.all.paginate(page: params[:page])
  end
  def update
    @league = League.find(params[:id])
    @league.update_attributes(league_params)
      redirect_to :back
  end
  def events
   @league = League.find(params[:id])
   @events= @league.events.paginate(page: params[:page])
  end
  def closeevent
    @league = League.find(params[:id])
    @event= @league.events.find_by(id: params[:eid])
    @event.closed= true
    @event.save!
  end
  def leaderboards
    @league = League.find(params[:id])
    @points = PartInEvent.joins('JOIN events ON events.id = part_in_events.event_id')
    .joins('JOIN leagues ON events.league_id = leagues.id')
    .joins('JOIN participates ON participates.league_id = leagues.id')
    .joins('JOIN users ON users.id = participates.user_id')
    .where("participates.state = 1 AND leagues.id= ? AND part_in_events.user_id= users.id",@league.id)
    .select('users.name ,users.id , sum(score) as totalscore').group("users.id")

  end
  private

  def league_params
    params.require(:league).permit(:information,:name,:id,:loc,:slocation,:sdiscipline, :begdate, :expenddate,:location_id, :discipline_id)
  end
end
