class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.integer :code_number
      t.string :name
      t.integer :current_state
      t.references :region, index: true
      t.timestamps
    end
  end
end
