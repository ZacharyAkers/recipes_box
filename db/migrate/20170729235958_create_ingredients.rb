class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.decimal :amount
      t.string :measurements
      t.string :item
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
