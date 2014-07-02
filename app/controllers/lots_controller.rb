class LotsController < ApplicationController
  before_action :load_dropdown_data, only: [:new, :create, :edit, :update]

  def index
    @lots = Lot.all.includes(:street).order('streets.name ASC, number ASC')
               .page(params[:page])
  end

  def new
    @lot = Lot.new
  end

  def create
    @lot = Lot.new(lot_params)
    if @lot.save
      flash[:success] = 'Lot created'
      redirect_to lots_path
    else
      render :new
    end
  end

  def edit
    @lot = Lot.find(params[:id])
  end

  def update
    @lot = Lot.find(params[:id])
    @lot.update_attributes(lot_params)
    if @lot.save
      flash[:success] = 'Updated lot'
      redirect_to lots_path
    else
      render :new
    end
  end

  private

  def load_dropdown_data
    @streets = Street.all.order('name')
  end

  def lot_params
    params.require(:lot).permit(:number, :street_id)
  end
end
