class Public::CustomersController < ApplicationController
  def show
    @customer=current_customer
  end

  def edit
    @customer=current_customer
  end

  def update

  end

  def confirm

  end

  def withdraw

  end
end
