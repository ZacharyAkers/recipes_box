class Recipe < ApplicationRecord
    has_many :steps
    has_many :ingredients
    validates :name, presence: true,
                    length: { minimum: 3 }
end
