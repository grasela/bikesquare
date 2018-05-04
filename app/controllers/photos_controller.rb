class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.all
    authorize @photos

  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    authorize @photo
  end

  # GET /photos/new
  def new
    @photo = Photo.new
    @bicycle = Bicycle.find(params[:bicycle_id])
    
  end

  # GET /photos/1/edit
  def edit
      @photo = Photo.find(params[:id])
      @bicycle = Bicycle.find(photo.bicycle_id)
      authorize @photo
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params)
    authorize @photo


    respond_to do |format|
      if @photo.save
        format.html { redirect_to edit_bicycle_path(@photo.bicycle_id), notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @photo }
      else
        format.html { render :new }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
    authorize @photo
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to edit_bicycle_path(@photo.bicycle_id), notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
    authorize @photo
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    def set_bicycle 
      @photo = Photo.find(params[:id])
      @bicycle = Bicycle.find(photo.bicycle_id)

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:image, :bicycle_id)
    end
end
