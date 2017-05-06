class InstrumentsController < OpenReadController
  before_action :set_instrument, only: [:show, :update, :destroy]

  # GET /instruments
  def index
    @instruments = Instrument.all

    render json: @instruments
  end

  # GET /instruments/1
  def show
    render json: @instrument
  end

  # POST /instruments
  def create
    @instrument = current_user.instruments.build(instrument_params)

    if @instrument.save
      render json: @instrument, status: :created, location: @instrument
    else
      render json: @instrument.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /instruments/1
  def update
    if @instrument.update(instrument_params)
      render json: @instrument
    else
      render json: @instrument.errors, status: :unprocessable_entity
    end
  end

  # DELETE /instruments/1
  def destroy
    @instrument.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instrument
      @instrument = Instrument.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def instrument_params
      params.require(:instrument).permit(:instrument_type, :price, :user_id)
    end
end
