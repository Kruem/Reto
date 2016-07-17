class CalendarsController < ApplicationController
  before_action :set_pet

  def set_pet
    @pet=Pet.find(params[:pet_id])
  end

  def index
    @calendars =@pet.calendars.all
  end
  def edit
    @calendar =@pet.calendar.find(params[:id])
  end
  def new
    @calendar =@pet.calendars.new
  end
  def create
    @pet = Pet.find(params[:pet_id])
    @calendar=@pet.calendars.new(calendar_params)
    @calendar.save
    redirect_to pet_calendars_path
  end
  def destroy
    @calendar =@pet.Calendar.find(params[:id])
    @calendar.destroy
    redirect_to pet_calendars_path

  end
  def update
    @calendar= @pet.Calendar.find(params[:id])
    @calendar.update(calendar_params)
    redirect_to pet_calendars_path

  end
  def calendar_params
    params.require(:calendar).permit(:day,:time,:id_calendar)

  end
end
