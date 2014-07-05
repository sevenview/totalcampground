class ReservationsController < ApplicationController
  before_action :load_data_for_dropdowns, only: [:new, :create, :edit, :update]

  def index
    @reservations = Reservation.all.order(start_date: :asc).page(params[:page])
  end

  def new
    @reservation = Reservation.new

    # Check to see if we're being redirected from creating a new camper
    @reservation.camper = Camper.find(params[:camper_id]) if params[:camper_id]
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      flash[:success] = t('reservations.created_message')
      redirect_to reservations_path
    else
      render :new
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update_attributes(reservation_params)
    if @reservation.save
      flash[:success] = "Updated reservation ##{@reservation.id}"
      redirect_to reservations_path
    else
      render :edit
    end
  end

  def check_in
    reservation = Reservation.find(params[:id])
    reservation.checked_in = true
    reservation.save
    redirect_to reservations_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(
      :camper_id, :start_date, :end_date, :lot_id,
      :adults, :children, :pets, :notes, :checked_in,
      :security_card_number, :credit_card_number,
      :credit_card_expiry_month, :credit_card_expiry_year,
      :credit_card_type, :rv_type_id
    )
  end

  def load_data_for_dropdowns
    @campers = Camper.all.order(:last_name, :first_name)
    @streets = Street.all
    @rv_types = RvType.all.order(:name)
  end
end
