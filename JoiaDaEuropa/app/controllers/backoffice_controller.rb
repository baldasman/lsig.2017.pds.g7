class BackofficeController < ApplicationController

    def concluded

      @orders = Order.all
      @orders = Order.where(order_state_id: 2)

    end

    def approve_order

      @order = Order.find_by(id: params[:order_id])
      @order.order_state_id = 4
      @order.save
      redirect_to backoffice_approved_path

    end

    def cancel_order

      @order = Order.find_by(id: params[:order_id])
      @order.order_state_id = 3
      @order.save
      redirect_to backoffice_cancelled_path

    end

    def complete_order

      @order = Order.find_by(id: params[:order_id])
      @order.order_state_id = 2
      @order.save
      redirect_to backoffice_concluded_path

    end

    def approved

      @orders = Order.all
      @orders = Order.where(order_state_id: 4)

    end

    def cancelled

      @orders = Order.all
      @orders = Order.where(order_state_id: 3)

    end

    def pending

      @orders = Order.all
      @orders = Order.where(order_state_id: 1)

    end

    def index

      @orders = Order.all

    end

    def view

      @order = Order.find_by(id: params[:id])

    end
end
