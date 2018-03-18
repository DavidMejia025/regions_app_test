class CreateTableRegionsAndStates < ActiveRecord::Migration[5.1]
  def change
    create_table :regions_states do |t|
      t.belongs_to :region, index: true  
      t.belongs_to :state, index: true
    end
  end
end
