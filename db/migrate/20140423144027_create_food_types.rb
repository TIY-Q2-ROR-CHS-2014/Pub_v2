class CreateFoodTypes < ActiveRecord::Migration
  def change
    create_table :food_types do |t|
      t.integer :food_id
      t.integer :food_category_id
      t.timestamps
    end
  end
end
