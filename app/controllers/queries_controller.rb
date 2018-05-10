class QueriesController < ApplicationController
  before_action :set_query, only: [:show, :edit, :update, :destroy]

  # GET /queries
  # GET /queries.json
  def index
    @queries = Query.all
  end

  # GET /queries/1
  # GET /queries/1.json
  def show
  end

  # GET /queries/new
  def new
    @query = Query.new
    @bicycle = Bicycle.find(params[:bicycle_id])
    @owner = @bicycle.user 
  end

  # GET /queries/1/edit
  def edit
    @bicycle = Bicycle.find(@query.bicycle_id)
  end

  # POST /queries
  # POST /queries.json
  def create
    @query = Query.new(query_params)
    @bicycle = Bicycle.find(@query.bicycle_id)

    respond_to do |format|
      if @query.save
        format.html { redirect_to bicycle_path(@bicycle), notice: 'question sent to the owner!' }
        format.json { render :show, status: :created, location: @query }
      else
        format.html { render :new }
        format.json { render json: @query.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /queries/1
  # PATCH/PUT /queries/1.json
  def update
    @bicycle = Bicycle.find(@query.bicycle_id)
    respond_to do |format|
      if @query.update(answer_params)
        format.html { redirect_to @bicycle, notice: 'you have answered the question' }
        format.json { render :show, status: :ok, location: @query }
      else
        format.html { render :edit }
        format.json { render json: @query.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /queries/1
  # DELETE /queries/1.json
  def destroy
    @query.destroy
    respond_to do |format|
      format.html { redirect_to queries_url, notice: 'Query was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_query
      @query = Query.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def query_params
      params.require(:query).permit(:question, :bicycle_id, :answer, :user_id)
    end
    def answer_params
      params.require(:query).permit(:question, :bicycle_id, :answer)
    end
end
