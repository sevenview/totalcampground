class CampersController < ApplicationController
  def index
    @campers = Camper.all.order(:last_name, :first_name)
  end

  def new
    @camper = Camper.new
  end

  def create
    @camper = Camper.new(camper_params)
    if @camper.save
      flash[:success] = "Created camper #{@camper.full_name}"
      redirect_to campers_path
    else
      render :new
    end
  end

  private

  def camper_params
    params.require(:camper).permit(:first_name, :last_name, :address, :city,
                                   :province, :postal_code, :country, :phone,
                                   :mobile, :email, :notes)
  end
end
