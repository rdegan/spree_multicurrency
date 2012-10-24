class CreateCurrencies < ActiveRecord::Migration
  def up
    create_table :spree_currencies do |t|
      t.string :iso
      t.float :rate
      t.string :symbol

      t.timestamps
    end
  end
  
  def down
    drop_table :spree_currencies
  end
end
