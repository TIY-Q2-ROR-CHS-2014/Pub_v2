class DrinkCategory < ActiveRecord::Base
  # I do my lists like this due to GitHub 
  # displaying things inline versus on new 
  # lines
  CATEGORIES = [
    'Beer',
    'Wine',
    'Soft Drink',
    'Energy Drink',
    'Coffee',
    'Tea'
  ]

  has_many :taps
  has_many :drinks, through: :taps
  # drink_category.taps
  # arr = []
  # drink_category.taps.each do |tap|
  #   arr.push tap.drink
  # end


end
