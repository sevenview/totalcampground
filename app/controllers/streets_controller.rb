class StreetsController < ApplicationController
  def index
    @streets = Street.all.order('name')
  end
end
