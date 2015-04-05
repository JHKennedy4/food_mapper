class RenameTypeToStoreTypeInStoreType < ActiveRecord::Migration
  def change
    rename_column :store_types, :type, :store_type
  end
end
