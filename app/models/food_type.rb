class FoodType < ActiveRecord::Base
  belongs_to :food
  belongs_to :food_category
end
