class AddStepIdToIngredient < ActiveRecord::Migration[5.1]
  def change
    add_reference :ingredients, :step, foreign_key: true
  end
end
