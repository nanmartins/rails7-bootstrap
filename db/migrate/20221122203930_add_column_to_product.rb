class AddColumnToProduct < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :identifier, :category
    add_column :products, :color, :string
    add_column :products, :description, :string
    add_column :products, :category_id, :string
  end
end
