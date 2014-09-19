require 'toh'

describe Toh do
  subject(:game) { Toh.new }
  describe "tower of Hanoi" do

    it "initialize to three array" do
      expect(game.grid.length).to eq(3)
    end

    it 'first tower should consist of 3,2,1' do
      expect(game.grid[0]).to eq([3,2,1])
    end

    it 'tower should have move function' do
      expect(game.methods.include?(:move)).to eq(true)
    end

    it 'move should remove disk from initial tower' do
      game.move(0, 1)
      expect(game.grid[0].length).to eq(2)
    end

    context "illegal moves" do
      before(:each) do
        game.move(0, 1)
      end

      it "should raise error when move bigger disk on top of smaller disk" do
        expect { game.move(0,1) }.to raise_error(IllegalMoveError)
      end
    end

    context 'win' do
      before(:each) do
        game.move(0,2)
        game.move(0,1)
        game.move(2,1)
        game.move(0,2)
        game.move(1,0)
        game.move(1,2)
      end

      it "should say win" do
        game.move(0,2)
        expect(game.won?).to eq(true)
      end

      it 'should say not won' do
        expect(game.won?).to eq(false)
      end
    end

  end
end