class AddMeasurementToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :measurement, :float
  end
end
