class PartInEventsController < ApplicationController
  def new
    @event= PartInEvent.new()
  end
  def create
    @event= PartInEvent.create!(post_params)
    redirect_to
  end
  def pick
    @participate= Participate.find_by( id: params[:pid])
    event= Event.find_by(id: params[:id])
    PartInEvent.create!(:user_id=> @participate.user.id,:event_id=> event.id)
    #if (@participate.league.isAdmin?(current_user))


    # end
    redirect_to :back
  end
  def unpick
    @participate= Participate.find_by( id: params[:pid])
    event= Event.find_by(id: params[:id])
    #PartInEvent.create!(:user_id=> @participate.user.id,:event_id=> event.id)
    pie= PartInEvent.find_by(user_id: @participate.user.id,event_id: event.id)
    PartInEvent.delete(pie.id)
    #if (@participate.league.isAdmin?(current_user))


    # end
    redirect_to :back
  end
  private
  def part_params
    #params.permit(:event_id,:user_id)
  end
end
