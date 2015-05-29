class AddFieldToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :qtd, :integer
  end
end
