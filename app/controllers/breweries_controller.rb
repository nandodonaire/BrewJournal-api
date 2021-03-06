class BreweriesController < ProtectedController
  before_action :set_brewery, only: [:show, :update, :destroy]

  # GET /breweries
  def index
    @breweries = current_user.breweries.all

    render json: @breweries
  end

  # GET /breweries/1
  def show
    render json: @brewery
  end

  # POST /breweries
  def create
    @brewery = current_user.breweries.build(brewery_params)

    if @brewery.save
      render json: @brewery, status: :created, location: @brewery
    else
      render json: @brewery.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /breweries/1
  def update
    if @brewery.update(brewery_params)
      render json: @brewery
    else
      render json: @brewery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /breweries/1
  def destroy
    @brewery.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brewery
      @brewery = current_user.breweries.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def brewery_params
      params.require(:brewery).permit(:name, :location, :visited, :beers_tasted, :notes)
    end
end
