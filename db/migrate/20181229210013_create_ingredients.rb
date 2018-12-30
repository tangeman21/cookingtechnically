class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.references :ingredient_type

      t.timestamps
    end
  end
end
