class NewOrderController < ApplicationController

  def index

    @user = current_user

  end

  def edit

    @order = NewOrder.find_or_initialize_by(user_id: params[:id])


  end


  def save_new_order


    @user = current_user.order
    @order.name = params[:order][:obs]
    @order.gender = params[:order][:delivery_date]
    @order.age = params[:order][:price]
    @order.address = params[:order][:attachment_path]

    if @order.save
      redirect_to client_area_index_path
    else
      flash[:error] = @order.errors.messages

      redirect_to client_area_new_order_path

    end

  end


end