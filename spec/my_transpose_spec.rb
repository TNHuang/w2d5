require 'my_transpose'

describe "dimension check" do
  var = [[1,2],[3,4]]

  it 'outside dimension should remain constant' do
    expect(var.my_transpose.length).to eq(var.length)
  end

  it "inside dimension should remain constant" do
    expect(var.my_transpose[0].length).to eq(var[0].length)
  end

end

describe "different arry size" do
  rows = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ]
  answer = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]

    it "should return transpose matrix" do
      expect(rows.my_transpose).to eq(answer)
    end
end


