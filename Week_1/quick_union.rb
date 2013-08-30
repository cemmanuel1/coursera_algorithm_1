class Quickfind

  def initialize(num)
    @id = []
    0.upto(num-1) {|i| @id[i] = i}
  end

  def root(int)
    while int != @id[int]
     int = @id[int]
    end
   int
  end

  def connected?(int_1, int_2)
    root(int_1) == root(int_2)
  end

  def union(int_1, int_2)
    a = root(int_1)
    b = root(int_2)
    @id[a] = b
  end
end



qf = Quickfind.new(5)
p qf.connected?(3,4)
qf.union(3,4)
p qf.connected?(3,4)
