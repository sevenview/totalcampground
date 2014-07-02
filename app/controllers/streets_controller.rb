class StreetsController < ApplicationController
  def index
    @streets = Street.all.order('name')
  end

  def new
    @street = Street.new
  end

  def create
    @street = Street.new(street_params)
    if @street.save
      flash[:success] = 'Street created'
      redirect_to streets_path
    else
      render :new
    end
  end

  def edit
    @street = Street.find(params[:id])
  end

  def update
    @street = Street.find(params[:id])
    @street.update_attributes(street_params)
    if @street.save
      flash[:success] = 'Street updated'
      redirect_to streets_path
    else
      render :edit
    end
  end

  private

  def street_params
    params.require(:street).permit(:name)
  end
end
