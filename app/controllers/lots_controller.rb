class LotsController < ApplicationController
  def index
    @lots = Lot.all.includes(:street).order('streets.name ASC, number ASC')
  end
end
