class Quickfind

  def initialize(num)
    @id = []
    0.upto(num-1) {|i| @id[i] = i}
  end

  def connected?(int_p, int_q)
    @id[int_p] == @id[int_q]
  end

  def union(int_p, int_q)
    int_p = @id[int_p]
    int_q = @id[int_q]
    @id.map! {|i| (i == int_p) ? int_q : i }
  end
end



qf = Quickfind.new(5)
p qf.connected?(3,4)
qf.union(3,4)
p qf.connected?(3,4)
