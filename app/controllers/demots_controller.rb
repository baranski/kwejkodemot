class DemotsController < ApplicationController

before_filter :authenticate_user!, :except => [ :show, :index ]

load_and_authorize_resource

  # GET /demots
  # GET /demots.json
  def index
    @demots = Demot.where(active: true).page params[:page]
  end

  # GET /demots/1
  # GET /demots/1.json
  def show
  end

  # GET /demots/new
  # GET /demots/new.json
  def new
  end

  # GET /demots/1/edit
  def edit
  end

  # POST /demots
  # POST /demots.json
  def create
    @demot = Demot.new(params[:demot])
    @demot.user_id = current_user.id

    respond_to do |format|
      if @demot.save
        format.html { redirect_to @demot, notice: 'Demot was successfully created.' }
        format.json { render json: @demot, status: :created, location: @demot }
      else
        format.html { render action: "new" }
        format.json { render json: @demot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /demots/1
  # PUT /demots/1.json
  def update
    @demot = Demot.find(params[:id])

    respond_to do |format|
      if @demot.update_attributes(params[:demot])
        format.html { redirect_to @demot, notice: 'Demot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @demot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demots/1
  # DELETE /demots/1.json
  def destroy
    @demot = Demot.find(params[:id])
    @demot.destroy

    respond_to do |format|
      format.html { redirect_to demots_url }
      format.json { head :no_content }
    end
  end
end
