class CampersController < ApplicationController
  def index
    @campers = Camper.all.order(:last_name, :first_name)
  end
end
