class AddStoreTypeToReport < ActiveRecord::Migration
  def change
    add_column :reports, :store_type_id, :string
  end
end
