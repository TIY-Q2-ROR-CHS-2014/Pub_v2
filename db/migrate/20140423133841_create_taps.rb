class CreateTaps < ActiveRecord::Migration
  def change
    create_table :taps do |t|
      t.integer :drink_id
      t.integer :drink_category_id
      t.timestamps
    end
  end
end
