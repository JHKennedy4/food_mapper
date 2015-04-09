class StoresController < ApplicationController
  def search
    @stores = Store.search params[:q]
  end
  def show
    @store = Store.includes(:reports).find params[:id]
  end
end
