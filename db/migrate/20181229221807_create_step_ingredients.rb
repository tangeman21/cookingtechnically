class CreateStepIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :step_ingredients do |t|

      t.timestamps
      t.belongs_to :recipe_step
      t.belongs_to :ingredient
      t.float :amount
      t.integer :amount_unit
    end
  end
end
