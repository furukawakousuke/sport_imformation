class Customer::SportGenresController < ApplicationController
  def show
    @sport = SportGenre.find(params[:id])
  end
end