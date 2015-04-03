class StoresController < ApplicationController
  def search
    @stores = Store.search params[:q]
  end
end
