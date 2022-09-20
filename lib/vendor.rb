require 'pry'
class Vendor
  attr_reader :name, :inventory
  def initialize(name)
    @name = name 
    @inventory = {}
  end

  def check_stock(item)
    @inventory[item]
    
  end

end

# @inventory[item] = amount
# groups = Hash.new(0) 
# @inventory.group_by do |item, amount|
#   item
#   groups[item]
#   groups
#   binding.pry
  
  #   def check_stock(item)
#     # binding.pry
#     @inventory[item]
#   end

#   def stock(item, number)
#     groups = @inventory.group_by do |item, number|
#       item
#     end
#     combined = groups.map do |item, value|
#       groups.inject({}) do |name, value|
#         @inventory.merge(value)
#       end
#     end
#     @inventory
#   end     
# end
    

