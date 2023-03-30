class Admin::PrefectureGenresController < ApplicationController
    def index
      @prefectures = PrefectureGenre.all
      @prefecture = PrefectureGenre.new
    end
   def create
     @prefecture = PrefectureGenre.new(prefecture_params)
     @prefecture.save
     redirect_to admin_prefecture_genres_path
   end

  def edit
    @prefecture = PrefectureGenre.find(params[:id])
  end

  def update
    @prefecture = PrefectureGenre.find(params[:id])
    @prefecture.update(prefecture_params)
    redirect_to admin_prefecture_genres_path
  end

  def destroy
    @prefecture = PrefectureGenre.find(params[:id])
    @prefecture.destroy
    redirect_to admin_prefecture_genres_path
  end

  private
  def prefecture_params
    params.require(:prefecture_genre).permit(:prefectures)
  end
end
