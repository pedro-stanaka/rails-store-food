class IntoleranceTypesController < ApplicationController
  # GET /intolerance_types
  # GET /intolerance_types.json
  def index
    @intolerance_types = IntoleranceType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @intolerance_types }
    end
  end

  # GET /intolerance_types/1
  # GET /intolerance_types/1.json
  def show
    @intolerance_type = IntoleranceType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @intolerance_type }
    end
  end

  # GET /intolerance_types/new
  # GET /intolerance_types/new.json
  def new
    @intolerance_type = IntoleranceType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @intolerance_type }
    end
  end

  # GET /intolerance_types/1/edit
  def edit
    @intolerance_type = IntoleranceType.find(params[:id])
  end

  # POST /intolerance_types
  # POST /intolerance_types.json
  def create
    @intolerance_type = IntoleranceType.new(params[:intolerance_type])

    respond_to do |format|
      if @intolerance_type.save
        format.html { redirect_to @intolerance_type, notice: 'Intolerance type was successfully created.' }
        format.json { render json: @intolerance_type, status: :created, location: @intolerance_type }
      else
        format.html { render action: "new" }
        format.json { render json: @intolerance_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /intolerance_types/1
  # PUT /intolerance_types/1.json
  def update
    @intolerance_type = IntoleranceType.find(params[:id])

    respond_to do |format|
      if @intolerance_type.update_attributes(params[:intolerance_type])
        format.html { redirect_to @intolerance_type, notice: 'Intolerance type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @intolerance_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intolerance_types/1
  # DELETE /intolerance_types/1.json
  def destroy
    @intolerance_type = IntoleranceType.find(params[:id])
    @intolerance_type.destroy

    respond_to do |format|
      format.html { redirect_to intolerance_types_url }
      format.json { head :no_content }
    end
  end
end
