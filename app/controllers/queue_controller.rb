class QueueController < ApplicationController
  def index
    @demots = Demot.where(active: false)
  end
end
