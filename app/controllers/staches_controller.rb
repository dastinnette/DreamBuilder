class StachesController < ApplicationController
  helper :headshot
  
  def index
    @staches = Stache.all
  end

  def show
    @stache = Stache.find(params[:id])
  end
end
