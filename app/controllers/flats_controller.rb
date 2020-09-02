class FlatsController < ApplicationController
    before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show; end

  def new
    @flat = Flat.new
  end


  def edit; end

  def create
    @flat = Flat.new(flat_params)
    @flat.save

    redirect_to flats_url
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    @flat.update(flat_params)

    redirect_to flats_url
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @flat.destroy(flat_params)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat
      @flat = Flat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flat_params
      params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
    end
end
