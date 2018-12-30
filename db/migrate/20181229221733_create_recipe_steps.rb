class CreateRecipeSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_steps do |t|

      t.timestamps
      t.belongs_to :recipe
      t.belongs_to :technique
      t.string :description
    end
  end
end
