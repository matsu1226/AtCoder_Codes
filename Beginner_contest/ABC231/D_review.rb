class UnionFind
  # @parent
  # 正 => parenotのindexを表示
  # 負 => 自身がgroupのrootである

  attr_accessor :parent

  def initialize(size)
    @parent = Array.new(size ,-1)
  end

  def root(x)
    if x < 0
      x
    else
      # 経路圧縮を行う
      @parent[x] = root(@parent[x])
    end
  end

  def merge(x, y)
    root_x = root(x)
    root_y = root(y)
    return false if root_x == root_y

    @parent[root_x] += @parent[root_y]
    @parent[root_y] = root_x
  end

  def check_same_parent?(x, y)
    root(x) == root(y)
  end
end


n,m = gets.chomp.split.map(&:to_i)
used = Array.new( n + 1 , 0)
uf = UnionFind.new( n + 1 )

m.times do
  a,b = gets.chomp.split.map(&:to_i)
  if uf.check_same_parent?(a,b)
    puts "No"
    exit
  end
  uf.merge(a,b)
  used[a] += 1
  used[b] += 1
end

if used.find{|v| v >= 3  }
  puts "No"
  exit
else
  
end

puts "Yes"