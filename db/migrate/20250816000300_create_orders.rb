class CreateShopOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :shop_orders do |t|
      t.integer :product_id
      t.integer :user_id
      t.string :sku
      t.integer :price
      t.integer :coupon_id
      t.string :status, default: "pending"
      t.timestamps
    end
  end
end
