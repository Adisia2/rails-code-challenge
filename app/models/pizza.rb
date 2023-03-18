class Pizza < ApplicationRecord
    has_many :restaurants_pizzas
    has_many :restaurants, through: :restaurants_pizzas
end
