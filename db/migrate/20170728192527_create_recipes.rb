class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.decimal :cook_time
      t.decimal :prep_time

      t.timestamps
    end
  end
end
