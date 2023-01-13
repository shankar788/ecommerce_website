class AddDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :pro_carts, :quantity,1
  end
end
