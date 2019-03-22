class BoughtProductsController < ApplicationController
  def index
    @bought_products = current_user.bought_products
  end
end
