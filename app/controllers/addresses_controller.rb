class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  # GET /addresses
  # GET /addresses.json
  def index
    @addresses  = policy_scope(Address)
    @user = current_user

  end

  # GET /addresses/1
  # GET /addresses/1.json
  def show
    @full_address = @address.address
    @lon = @address.longitude
    @lat = @address.latitude 
    authorize @address
  end

  # GET /addresses/new
  def new
    @address = Address.new
    @user = current_user
  end

  # GET /addresses/1/edit
  def edit
    authorize @address
    @user = current_user
  end

  # POST /addresses
  # POST /addresses.json
  def create
    @address = Address.new(address_params)
 @user = current_user
    respond_to do |format|
      if @address.save
        format.html { redirect_to @address, notice: 'Address was successfully created.' }
        format.json { render :show, status: :created, location: @address }
      else
        format.html { render :new }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
    authorize @address
  end

  # PATCH/PUT /addresses/1
  # PATCH/PUT /addresses/1.json
  def update
    respond_to do |format|
      if @address.update(address_params)
        format.html { redirect_to @address, notice: 'Address was successfully updated.' }
        format.json { render :show, status: :ok, location: @address }
      else
        format.html { render :edit }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
    authorize @address
  end

  # DELETE /addresses/1
  # DELETE /addresses/1.json
  def destroy
    @address.destroy
    respond_to do |format|
      format.html { redirect_to addresses_url, notice: 'Address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:address).permit(:house_number, :street_number, :street, :suburb, :city, :state, :country_code, :postal_code, :latitude, :longitute, :user_id)
    end
end
