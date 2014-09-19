require 'stock_picker'

describe "stuffs" do
  stock = [20, 10, 30, 0]
  it "should return best day to buy and sell stock" do
    expect(stock_picker(stock)).to eq([1,2])
  end

  it "buy date should not be after sell date" do
    dates = stock_picker(stock)
    expect((dates[1]-dates[0]) >= 0).to be true
  end

  it "should return empty array if there is no best buy and sell date" do
    bad_stock  = [10, 5, 2, 1]
    expect(stock_picker(bad_stock)).to eq([])
  end
end