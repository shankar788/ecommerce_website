class CreateUserOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :user_orders do |t|
      t.string :user_id
      t.string :cart_id
      t.string :product_id

      t.timestamps
    end
  end
end
