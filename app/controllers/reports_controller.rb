class ReportsController < ApplicationController
  def new
    @store = Store.find params[:store_id]
    @store_types = StoreType.all
    @foods = Food.all
    @food_categories = FoodCategory.all
  end

  def create
    Report.new
  end

  def edit
  end

  def show
  end
end
