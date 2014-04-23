class CreateDrinkCategories < ActiveRecord::Migration
  def change
    create_table :drink_categories do |t|
      t.string :name
      t.timestamps
    end
  end
end
