require 'pry'
class Item
  attr_reader :name, :price
  def initialize(attributes)
    @name = attributes[:name]
    # binding.pry
    @price = attributes[:price].gsub('$', '').to_f
  end
end