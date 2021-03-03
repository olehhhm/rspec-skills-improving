class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :product_id, :null => false
      t.string :name, :null => false
      
      t.timestamps
    end
  end
end
