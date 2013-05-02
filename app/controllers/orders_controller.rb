class OrdersController < ApplicationController
  respond_to :json

  def index
    render :json => Order.all
  end

  def show
    render :json => Order.find(params[:id])
  end

  def create
    order = Order.create(params[:order])
    render :json => order, :location => order, :status => 201
  end

  def update
    order = Order.find(params[:id])
    order.update_attributes(params[:order])
    head 204
  end

  def destroy
    Order.find(params[:id]).destroy
    head 204
  end
end
