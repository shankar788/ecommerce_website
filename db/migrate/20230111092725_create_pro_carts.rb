class CreateProCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :pro_carts do |t|
      t.integer :quantity
      t.references :user_login, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
