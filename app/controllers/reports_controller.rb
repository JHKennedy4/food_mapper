class ReportsController < ApplicationController
  def new
    @store = Store.find params[:store_id]
  end

  def edit
  end

  def show
  end
end
