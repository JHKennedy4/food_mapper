class RenameActualUnitsToUnits < ActiveRecord::Migration
  def change
    rename_table :actual_units, :units
  end
end
