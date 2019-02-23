class OrdersController < ApplicationController
  before_action :order, only: %i[show edit update destroy]

  def index
    orders
  end

  def show; end

  def new
    order
  end

  def edit
  end

  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if order.update(order_params)
        format.html { redirect_to order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: order }
      else
        format.html { render :edit }
        format.json { render json: order.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def orders
    @orders ||= Order.all
  end

  def order
    @order ||= id.present? ? Order.find(id) : Order.new
  end

  def id
    @id ||= params[:id]
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def order_params
    # TODO: Refatorar
    params.require(:order).permit(:status, order_products_attributes: %i[product_id quantity])  
  end

  #def products_params
    # TODO: Refatorar
    # Aqui eu to removendo dos parametros qualquer valor igual a zero pois zero é enviado quando o check_box ta como falso.
   # { product_ids: params[:order][:product_ids]}
  #end
end