class AddQuantityToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :quantity, :float
  end
end
