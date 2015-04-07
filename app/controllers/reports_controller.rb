class ReportsController < ApplicationController
  def new
    @report = Report.new
    Food.all.each do |food|
      @report.food_availabilities.build(:food_id => food.id,
                                        :quantity => food.desired_quantity,
                                        :actual_unit_id => food.desired_unit_id)
    end

    @store = Store.find params[:store_id]
    @food_categories = FoodCategory.includes(food: [:unit])
  end

  def create
    Report.new
  end

  def edit
  end

  def show
  end
end
