# code your solution here
class MinHeap

  attr_reader :data
  attr_accessor :datum, :root

  def initialize
    @data = []
    @root = nil
  end

  def push(datum)
    if !self.root
      self.root = datum
    else
      if self.root > datum
        self.root = datum
      end
    end
    self.data.push(datum)
  end

  def pop
    if self.data.last == self.root
      sorted_arr = self.data.sort
      self.root = sorted_arr[1]
    end
    self.data.pop
  end

end
