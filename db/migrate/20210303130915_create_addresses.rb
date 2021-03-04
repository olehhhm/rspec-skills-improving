class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :product, index: true
      t.string :name, :null => false
      
      t.timestamps
    end
  end
end
