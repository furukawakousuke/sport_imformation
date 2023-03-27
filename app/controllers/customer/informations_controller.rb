class Customer::InformationsController < ApplicationController
  def new
    @information = Information.new
  end
  def create
    
  end

  def index
    @informations = Information.all
    @sport = SportGenre.all
    @prefecture = PrefectureGenre.all
  end
  def search
    
  end

  def show
  end

  def edit
  end
  
  private
  def information_params
    params.require(:information).permit(:title,:introduction)
  end
end
