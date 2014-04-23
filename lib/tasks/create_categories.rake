task create_drink_categories: :environment do
  DrinkCategory::CATEGORIES.each do |category|
    DrinkCategory.create( {name: category} )
  end
end

task create_food_categories: :environment do
  FoodCategory::CATEGORIES.each do |category|
    FoodCategory.create( {name: category} )
  end
end
