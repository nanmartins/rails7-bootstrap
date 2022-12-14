class AddColumnsToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :category, :string
    add_column :products, :name, :string
    add_column :products, :price, :float
    add_column :products, :image, :string
    add_column :products, :color, :string
    add_column :products, :size, :string
    add_column :products, :description, :string
  end
end
