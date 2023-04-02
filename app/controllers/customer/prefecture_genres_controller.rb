class Customer::PrefectureGenresController < ApplicationController
  def show
    @prefecture = PrefectureGenre.find(params[:id])
  end
end