class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, :null => false
      t.text :description
      t.boolean :is_private, default: false
      t.text :file1, :null => false
      t.text :file2

      t.timestamps
    end
  end
end
