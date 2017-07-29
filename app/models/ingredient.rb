class Ingredient < ApplicationRecord
    belongs_to :step, :recipe
end
