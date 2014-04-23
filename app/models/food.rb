class Food < ActiveRecord::Base
  belongs_to :pub

  has_many :food_types
  has_many :food_categories, through: :food_types
end
