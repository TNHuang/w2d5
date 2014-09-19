class Array
  def two_sum
    output = []
    self.count.times do |i|
      next if i == self.count-1
      self[i+1..-1].each_with_index do |el, i2|
        output << [i, i2+i+1] if self[i]+el == 0
      end
    end
    output
  end
end