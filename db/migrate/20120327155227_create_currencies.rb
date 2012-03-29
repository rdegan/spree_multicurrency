class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :iso
      t.float :rate
      t.string :symbol

      t.timestamps
    end
  end
end
