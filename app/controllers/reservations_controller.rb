class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end
end
