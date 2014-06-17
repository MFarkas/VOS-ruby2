class NewspostsController < ApplicationController
  def new
    @newspost= Newspost.new()
  end
  def create
    @newspost= Newspost.create!(post_params)
    redirect_to :back
  end
  private
  def post_params
    params.require(:newspost).permit(:league_id,:title,:textcontent)
  end
end
