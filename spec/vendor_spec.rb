require './lib/item'
require './lib/vendor'
require 'pry'

describe '#initialize' do
  it 'exists and has attributes' do
    vendor = Vendor.new("Rocky Mountain Fresh")
    expect(vendor.name).to eq("Rocky Mountain Fresh")
    expect(vendor.inventory).to eq({})
  end
  it ' can check stock' do
    vendor = Vendor.new("Rocky Mountain Fresh")
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    vendor.stock(item1, 0)
    expect(vendor.check_stock(item1)).to eq(0)
    vendor.stock(item1, 30)
    expect(vendor.check_stock(item1)).to eq(30)
    vendor.stock(item1, 25)
    expect(vendor.check_stock(item1)).to eq(55)
  end
end