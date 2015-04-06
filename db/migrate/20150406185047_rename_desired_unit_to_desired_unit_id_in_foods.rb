class RenameDesiredUnitToDesiredUnitIdInFoods < ActiveRecord::Migration
  def change
    rename_column :foods, :desired_unit, :desired_unit_id
  end
end
