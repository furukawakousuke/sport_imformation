class Customer::FavoritesController < ApplicationController
  def index
  end
  
  def create
  @favorite = Favorite.new(customer_id: current_customer.id, information_id: params[:information_id])
  @favorite.save
  redirect_to information_path(params[:information_id]) 
  end
  
  def destroy
  @favorite = Favorite.find_by(customer_id: current_customer.id, information_id: params[:information_id])
  @favorite.destroy
  redirect_to information_path(params[:information_id]) 
  end
end
