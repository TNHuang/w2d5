require 'two_sum'

describe "testing two sum" do
  it "should return empty array" do
    expect([].two_sum).to eq([])
  end

  it "should return indicies of values added to zero" do
    expect([1,-1].two_sum).to eq([[0,1]])
  end

  it "should return indicies of more complex array" do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end
end