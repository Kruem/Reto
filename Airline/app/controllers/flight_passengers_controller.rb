class FlightPassengersController < ApplicationController
  before_action :set_flight_passenger, only: [:show, :edit, :update, :destroy]

  # GET /flight_passengers
  # GET /flight_passengers.json
  def index
    @flight_passengers = FlightPassenger.all
  end

  # GET /flight_passengers/1
  # GET /flight_passengers/1.json
  def show
  end

  # GET /flight_passengers/new
  def new
    @flight_passenger = FlightPassenger.new
  end

  # GET /flight_passengers/1/edit
  def edit
  end

  # POST /flight_passengers
  # POST /flight_passengers.json
  def create
    @flight_passenger = FlightPassenger.new(flight_passenger_params)

    respond_to do |format|
      if @flight_passenger.save
        format.html { redirect_to @flight_passenger, notice: 'Flight passenger was successfully created.' }
        format.json { render :show, status: :created, location: @flight_passenger }
      else
        format.html { render :new }
        format.json { render json: @flight_passenger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flight_passengers/1
  # PATCH/PUT /flight_passengers/1.json
  def update
    respond_to do |format|
      if @flight_passenger.update(flight_passenger_params)
        format.html { redirect_to @flight_passenger, notice: 'Flight passenger was successfully updated.' }
        format.json { render :show, status: :ok, location: @flight_passenger }
      else
        format.html { render :edit }
        format.json { render json: @flight_passenger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flight_passengers/1
  # DELETE /flight_passengers/1.json
  def destroy
    @flight_passenger.destroy
    respond_to do |format|
      format.html { redirect_to flight_passengers_url, notice: 'Flight passenger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight_passenger
      @flight_passenger = FlightPassenger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flight_passenger_params
      params.require(:flight_passenger).permit(:flight_id, :passenger_id)
    end
end
