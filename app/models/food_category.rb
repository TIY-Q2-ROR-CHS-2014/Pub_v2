class FoodCategory < ActiveRecord::Base
  CATEGORIES = [
    'Appetizers',
    'Dessert',
    'Soup',
    'Salad',
    'Entree'
  ]

  has_many :food_types
  has_many :foods, through: :food_types
end
