class AddColumnStateIdToRegionTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :states, :region_id
  end
end
