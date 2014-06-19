class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all.order(start_date: :asc)
  end
end
