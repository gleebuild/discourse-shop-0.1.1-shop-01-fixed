class CreateShopProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :shop_products do |t|
      t.string :title
      t.text :description
      t.jsonb :images, default: [], null: false
      t.string :video_url
      t.jsonb :specs, default: [], null: false
      t.integer :created_by
      t.integer :updated_by
      t.timestamps
    end
  end
end
