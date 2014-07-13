class AllergyTypesController < ApplicationController
  # GET /allergy_types
  # GET /allergy_types.json
  def index
    @allergy_types = AllergyType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @allergy_types }
    end
  end

  # GET /allergy_types/1
  # GET /allergy_types/1.json
  def show
    @allergy_type = AllergyType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @allergy_type }
    end
  end

  # GET /allergy_types/new
  # GET /allergy_types/new.json
  def new
    @allergy_type = AllergyType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @allergy_type }
    end
  end

  # GET /allergy_types/1/edit
  def edit
    @allergy_type = AllergyType.find(params[:id])
  end

  # POST /allergy_types
  # POST /allergy_types.json
  def create
    @allergy_type = AllergyType.new(params[:allergy_type])

    respond_to do |format|
      if @allergy_type.save
        format.html { redirect_to @allergy_type, notice: 'Allergy type was successfully created.' }
        format.json { render json: @allergy_type, status: :created, location: @allergy_type }
      else
        format.html { render action: "new" }
        format.json { render json: @allergy_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /allergy_types/1
  # PUT /allergy_types/1.json
  def update
    @allergy_type = AllergyType.find(params[:id])

    respond_to do |format|
      if @allergy_type.update_attributes(params[:allergy_type])
        format.html { redirect_to @allergy_type, notice: 'Allergy type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @allergy_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allergy_types/1
  # DELETE /allergy_types/1.json
  def destroy
    @allergy_type = AllergyType.find(params[:id])
    @allergy_type.destroy

    respond_to do |format|
      format.html { redirect_to allergy_types_url }
      format.json { head :no_content }
    end
  end
end
