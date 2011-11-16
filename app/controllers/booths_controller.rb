class BoothsController < ApplicationController
  # GET /booths
  # GET /booths.json
  def index
    @booths = Booth.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @booths }
    end
  end

  # GET /booths/1
  # GET /booths/1.json
  def show
    @booth = Booth.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @booth }
    end
  end

  # GET /booths/new
  # GET /booths/new.json
  def new
    @booth = Booth.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @booth }
    end
  end

  # GET /booths/1/edit
  def edit
    @booth = Booth.find(params[:id])
  end

  # POST /booths
  # POST /booths.json
  def create
    @booth = Booth.new(params[:booth])

    respond_to do |format|
      if @booth.save
        format.html { redirect_to @booth, notice: 'Booth was successfully created.' }
        format.json { render json: @booth, status: :created, location: @booth }
      else
        format.html { render action: "new" }
        format.json { render json: @booth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /booths/1
  # PUT /booths/1.json
  def update
    @booth = Booth.find(params[:id])

    respond_to do |format|
      if @booth.update_attributes(params[:booth])
        format.html { redirect_to @booth, notice: 'Booth was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @booth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booths/1
  # DELETE /booths/1.json
  def destroy
    @booth = Booth.find(params[:id])
    @booth.destroy

    respond_to do |format|
      format.html { redirect_to booths_url }
      format.json { head :ok }
    end
  end
end
