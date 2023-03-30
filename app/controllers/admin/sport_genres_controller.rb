class Admin::SportGenresController < ApplicationController
  def index
    @sports = SportGenre.all
    @sport = SportGenre.new
    @prefecture = PrefectureGenre.new
  end
  def create
    @sport = SportGenre.new(sport_params)
    @sport.save
    redirect_to admin_sport_genres_path
  end
  def update
    @sport = SportGenre.find(params[:id])
    @sport.update(sport_params)
    redirect_to admin_sport_genres_path
  end
  def destroy
    @sport = SportGenre.find(params[:id])
    @sport.destroy
    redirect_to admin_sport_genres_path
  end

  def edit
    @sport = SportGenre.find(params[:id])
  end

  private
  def sport_params
    params.require(:sport_genre).permit(:name)
  end
end
