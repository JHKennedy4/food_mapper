class CreateStoreTypes < ActiveRecord::Migration
  def change
    create_table :store_types do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
