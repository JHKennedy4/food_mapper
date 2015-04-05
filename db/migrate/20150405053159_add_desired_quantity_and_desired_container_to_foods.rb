class AddDesiredQuantityAndDesiredContainerToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :desired_quantity, :decimal, :precision => 8, :scale => 2
    add_column :foods, :desired_container, :string
  end
end
