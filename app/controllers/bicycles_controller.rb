class BicyclesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_bicycle, only: [:show, :edit, :update, :destroy]
  before_action :check_profile?


  # GET /bicycles
  # GET /bicycles.json
  def index
    @bicycles  = policy_scope(Bicycle)
  end

  # GET /bicycles/1
  # GET /bicycles/1.json
  def show
    @photos = @bicycle.photos
    @queries = @bicycle.queries
  end

  # GET /bicycles/new
  def new
    @bicycle = Bicycle.new
  end

  # GET /bicycles/1/edit
  def edit
    @bicycle = Bicycle.find(params[:id])
  end

  # POST /bicycles
  # POST /bicycles.json
  def create
    @bicycle = Bicycle.new(bicycle_params)
    @bicycle.user = current_user

    respond_to do |format|
      if @bicycle.save
        format.html { redirect_to @bicycle, notice: 'Bicycle was successfully created.' }
        format.json { render :show, status: :created, location: @bicycle }
      else
        format.html { render :new }
        format.json { render json: @bicycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicycles/1
  # PATCH/PUT /bicycles/1.json
  def update
    respond_to do |format|
      if @bicycle.update(bicycle_params)
        format.html { redirect_to @bicycle, notice: 'Bicycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @bicycle }
      else
        format.html { render :edit }
        format.json { render json: @bicycle.errors, status: :unprocessable_entity }
      end
    end
    authorize @bicycle
  end

  # DELETE /bicycles/1
  # DELETE /bicycles/1.json
  def destroy
    @bicycle.destroy
    respond_to do |format|
      format.html { redirect_to bicycles_url, notice: 'Bicycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_bicycle
    @bicycle = Bicycle.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def bicycle_params
    params.require(:bicycle).permit(:title, :price, :description, :brand, :size, :colour, :gender, :year)
  end


end
