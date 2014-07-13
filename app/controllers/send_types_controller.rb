class SendTypesController < ApplicationController
  # GET /send_types
  # GET /send_types.json
  def index
    @send_types = SendType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @send_types }
    end
  end

  # GET /send_types/1
  # GET /send_types/1.json
  def show
    @send_type = SendType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @send_type }
    end
  end

  # GET /send_types/new
  # GET /send_types/new.json
  def new
    @send_type = SendType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @send_type }
    end
  end

  # GET /send_types/1/edit
  def edit
    @send_type = SendType.find(params[:id])
  end

  # POST /send_types
  # POST /send_types.json
  def create
    @send_type = SendType.new(params[:send_type])

    respond_to do |format|
      if @send_type.save
        format.html { redirect_to @send_type, notice: 'Send type was successfully created.' }
        format.json { render json: @send_type, status: :created, location: @send_type }
      else
        format.html { render action: "new" }
        format.json { render json: @send_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /send_types/1
  # PUT /send_types/1.json
  def update
    @send_type = SendType.find(params[:id])

    respond_to do |format|
      if @send_type.update_attributes(params[:send_type])
        format.html { redirect_to @send_type, notice: 'Send type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @send_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /send_types/1
  # DELETE /send_types/1.json
  def destroy
    @send_type = SendType.find(params[:id])
    @send_type.destroy

    respond_to do |format|
      format.html { redirect_to send_types_url }
      format.json { head :no_content }
    end
  end
end
