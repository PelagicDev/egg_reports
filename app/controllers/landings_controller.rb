class LandingsController < ApplicationController
  def home
    @houses = House.all
  end

  def admin
  end
end
