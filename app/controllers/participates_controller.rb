class ParticipatesController < ApplicationController
  def create
    @league= League.find_by(id: params[:participate][:league_id])
    @league.participate(current_user)
    redirect_to @league
  end
  def show

    @participate= Participate.find_by(id: params[:id])
    @participate.state= 7
    @participate.save!
    @league= League.find_by(id: @participate.league_id)
    redirect_to @league
  end
  def qualify

    @participate= Participate.find_by( id: params[:id])
    #if (@participate.league.isAdmin?(current_user))
    @participate.state= 1
    @participate.save
   # end
    redirect_to :back

  end
  def disqualify
    @participate= Participate.find_by( id: params[:id])
    @participate.state= 2
    @participate.save
    redirect_to :back
  end
  private

  def part_params
    #params.require(:participant).permit(:id)
  end
end
