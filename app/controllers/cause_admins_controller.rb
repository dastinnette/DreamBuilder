class CauseAdminsController < ApplicationController

  def new
    @cause = Cause.find(params[:cause_id])
  end

  def create
    byebug
  end

end
