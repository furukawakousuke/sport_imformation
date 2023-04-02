class Customer::InformationsController < ApplicationController
  def new
    @information = Information.new
  end
  def create
    @information = Information.new(information_params)
    @information.customer_id = current_customer.id
    @information.save
    redirect_to informations_path
  end

  def index
    @informations = Information.all
    @sport = SportGenre.all
    @prefecture = PrefectureGenre.all
  end
  def search
    
  end

  def show
    @information = Information.find(params[:id])
    @comment = Comment.new
  end

  def edit
  end
  
  private
  def information_params
    params.require(:information).permit(:customer_id,:sport_genre_id,:prefecture_genre_id,:title,:introduction)
  end
end
