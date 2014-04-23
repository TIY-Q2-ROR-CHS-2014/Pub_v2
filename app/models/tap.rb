class Tap < ActiveRecord::Base
  belongs_to :drink
  belongs_to :drink_category
end
