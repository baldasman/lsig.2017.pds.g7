class OrderController < ApplicationController

    def concluded

        @orders = Order.where(user_id: current_user.id, order_state_id: 2)

    end

    def approved

        @orders = Order.where(user_id: current_user.id, order_state_id: 4)

    end

    def cancelled

        @orders = Order.where(user_id: current_user.id, order_state_id: 3)

    end

    def pending

        @orders = Order.where(user_id: current_user.id, order_state_id: 1)

    end

    def index

        @orders = Order.where(user_id: current_user.id)

    end

    def view

        @orders = Order.where(user_id: current_user.id)
        @order = Order.find_by(id: params[:id])


    end

    def new

        @order = Order.new


    end


    def edit

        @order = Order.find_by(id: params[:id])

    end


    def save

        _order = params[:order]

        if _order[:id].nil?
            @order = Order.new user_id: current_user.id, order_state_id: 1
        else
            @order = Order.find_by(id: _order[:id])
        end

        @order.price = _order[:price]
        @order.obs = _order[:obs]
        @order.delivery_date = _order[:delivery_date]
        @order.attachment_path = _order[:attachment_path]

        if @order.save
            redirect_to order_view_path(@order.id)
        else
            flash[:error] = @order.errors.messages

            redirect_to order_edit_path(_order[:id])
        end

    end


end