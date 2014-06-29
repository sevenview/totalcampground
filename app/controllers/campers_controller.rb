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

  def edit
    @camper = Camper.find(params[:id])
  end

  def update
    @camper = Camper.find(params[:id])
    @camper.update_attributes(camper_params)
    if @camper.save
      flash[:success] = "Updated camper #{@camper.full_name}"
      redirect_to campers_path
    else
      render :edit
    end
  end

  private

  def camper_params
    params.require(:camper).permit(:first_name, :last_name, :address, :city,
                                   :province, :postal_code, :country, :phone,
                                   :mobile, :email, :notes)
  end
end
