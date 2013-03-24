class QueueController < ApplicationController
  def index
    @demots = Demot.where(active: false).page params[:page]
  end
end
