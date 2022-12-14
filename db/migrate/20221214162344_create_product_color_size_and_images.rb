class CreateProductColorSizeAndImages < ActiveRecord::Migration[7.0]
  def change
    create_table :product_color_size_and_images do |t|
      t.string :color
      t.integer :size
      t.string :image
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
