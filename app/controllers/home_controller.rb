class HomeController < ApplicationController
  before_action :orders, only: %i[index]

  def index; end

  private

  def orders
    @orders ||= Order.all
  end
end
