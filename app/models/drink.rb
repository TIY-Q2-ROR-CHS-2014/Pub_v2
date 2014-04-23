class Drink < ActiveRecord::Base
  belongs_to :pub

  has_many :taps
  has_many :drink_categories, through: :taps
  # This is essentially what is it doing
  # when you query @drink.drink_categories
  # drink.taps
  # arr = []
  # drink.taps.each do |tap|
  #   arr.push tap.drink_category
  # end

  SHIT_BEERS = ["Bud Light", "Miller Light", "Budweiser"]
  # validates :name, presence: true, if: method_call_here
  validate :validate_shit_beers
  # def self.hello_world
  #   puts "Hello world"
  # end
  # Drink.hello_world

  attr_accessor :in_edit
  validate :validate_cost_in_edit

  def validate_shit_beers
    if Drink::SHIT_BEERS.include?(self.name)
      errors.add(:name, "can not be #{Drink::SHIT_BEERS.join(', ')}")
    end
  end
  # @drink.validate_shit_beers

  def validate_cost_in_edit
    puts self.inspect
    puts self.in_edit
  end
end
