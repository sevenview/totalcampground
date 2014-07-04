class RvTypesController < ApplicationController
  def index
    @rv_types = RvType.all.order(:name).page(params[:page])
  end

  def new
    @rv_type = RvType.new
  end

  def create
    @rv_type = RvType.new(rv_type_params)
    if @rv_type.save
      flash[:success] = 'RV Type created'
      redirect_to rv_types_path
    else
      render :new
    end
  end

  def edit
    @rv_type = RvType.find(params[:id])
  end

  def update
    @rv_type = RvType.find(params[:id])
    @rv_type.update_attributes(rv_type_params)
    if @rv_type.save
      flash[:success] = 'RV Type updated'
      redirect_to rv_types_path
    else
      render :edit
    end
  end

  private

  def rv_type_params
    params.require(:rv_type).permit(:name)
  end
end
