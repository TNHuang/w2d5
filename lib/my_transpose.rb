class Array
  def my_transpose
    cols = Array.new(self.length) { Array.new(self[0].length)}
    self.length.times do |i|
      self.length.times do |j|
        cols[i][j] = self[j][i]
      end
    end

    cols
  end
end