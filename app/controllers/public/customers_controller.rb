class Public::CustomersController < ApplicationController
  def show
    @customer=current_customer
    @cart_item = CartItem.new
  end

  def edit
    @customer=current_customer
  end

  def update
    @customer=current_customer
    @customer.update(customers_params)
    redirect_to public_customers_mypage_path(@customer)
  end

  def confirm
    @customer=current_customer
  end

  def withdraw
    @customer=current_customer
    @customer.update(is_deleted: true)
    reset_session
    redirect_to public_homes_top_path
  end

  private

  def customers_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number)
  end
end
