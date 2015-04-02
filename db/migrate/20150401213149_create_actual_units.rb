class CreateActualUnits < ActiveRecord::Migration
  def change
    create_table :actual_units do |t|
      t.string :unit

      t.timestamps null: false
    end
  end
end
