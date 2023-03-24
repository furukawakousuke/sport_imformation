class Customer::CustomersController < ApplicationController
  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end
  def update
    @customer = current_customer
  @customer.update(customer_params)
  redirect_to customer_mypage_path
  end

  private
  def customer_params
    params.require(:customer).permit(:name,:email,:prefecture )
  end
end
