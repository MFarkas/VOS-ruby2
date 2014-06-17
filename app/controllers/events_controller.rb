class EventsController < ApplicationController
  def new
    @event= Event.new()
  end
  def create
    @event= Event.create!(post_params)
    redirect_to @event #action:  'setpeople'
    #redirect_to action: 'manage'
  end

  def pick

    redirect_to :back
  end
  def unpick

  end
  def show
    @event= Event.find_by(id: params[:id])
    @participants = @event.league.participates.paginate(page: params[:page])
  end
  def update
    @event = Event.find(params[:id])
    @event.update(post_params)
    @event.save!
    redirect_to @event.league
  end
  private
  def post_params
    params.require(:event).permit(:league_id,:name,:info,:date,:address,
                                  :part_in_events_attributes => [:id,:score])
  end
  def part_params
    params.require(:part_in_event).permit(:score)
  end
end
