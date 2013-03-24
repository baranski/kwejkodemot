class TopController < ApplicationController
  def index
    #@demots = Demot.published.order('visits desc').limit 10
    @demots = Demot.published.order('votes_count desc').page params[:page]
  end
end
