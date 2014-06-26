class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all.order(start_date: :asc)
  end

  def new
    @reservation = Reservation.new
    data_for_dropdowns
  end

  def create
    @reservation = Reservation.new(reservation_params)
    data_for_dropdowns

    if @reservation.save
      flash[:success] = t('reservations.created_message')
      redirect_to reservations_path
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(
      :camper_id, :start_date, :end_date, :lot_id,
      :adults, :children, :pets, :notes, :checked_in
    )
  end

  def data_for_dropdowns
    @campers = Camper.all.order(:last_name, :first_name)
    @lots = Lot.all.order(:number)
  end
end
