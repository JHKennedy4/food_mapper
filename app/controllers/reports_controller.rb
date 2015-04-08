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
    params.permit!
    @report = Report.new(params[:report])
    if @report.save
      redirect_to @report
    else
      puts @report.errors.inspect
      puts @report.inspect
      Food.all.each do |food|
        @report.food_availabilities.build(:food_id => food.id,
                                          :quantity => food.desired_quantity,
                                          :actual_unit_id => food.desired_unit_id)
      end
      @store = Store.find @report[:store_id]
      @food_categories = FoodCategory.includes(food: [:unit])
      render action: :new
    end
  end

  def edit
  end

  def show
  end
end
