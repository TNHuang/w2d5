require 'my_uniq'

describe Array do

  it 'should return a blank array' do
    expect([].my_uniq).to eq([])
  end
end

  describe do
    it 'should return unique array' do
      expect([1,1,2,3].my_uniq).to eq([1,2,3])
    end

    it 'should not modify a unique array' do
      expect([1,2,3].my_uniq).to eq([1,2,3])
    end
  end



