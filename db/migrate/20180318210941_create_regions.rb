class CreateRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :regions do |t|

      t.timestamps
    end
  end
end
