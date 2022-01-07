# UnionFind アルゴリズム
# 概要 => https://atcoder.jp/contests/atc001/tasks/unionfind_a
# rubyで実装1 => https://qiita.com/k_karen/items/5349a25c3eb7b4697f58
# rubyで実装2 => https://akhtikd.com/posts/ruby-de-union-find/

class UnionFind
  attr_accessor :parent

  def initialize(size)
    # @hoge => instance変数(インスタンス(同じオブジェクト)内で共有される変数)
    # cf)global変数, local変数
    @parent = Array.new(size, -1)
    # parentがマイナス=> その値がrootであることを示す, プラス=> その値のrootのインデックスを示す
  end

  # xが所属するグループのルートノードを返す
  def root(x)
    if @parent[x] < 0
      x
    else
      # 経路圧縮を行う
      @parent[x] = root(@parent[x])
    end
  end

  # xとyが同じグループに属しているか判定する
  def same_parent?(x, y)
    print "root(x)      => #{root(x)} \n"
    print "root(y)      => #{root(y)} \n"
    return true if root(x) == root(y)
  end

  # xとyが所属するグループを併合する
  def merge(x, y)
    x_root = root(x)
    y_root = root(y)
  
    return false if x_root == y_root
  
    # merge technique
    if @parent[x_root] > @parent[y_root]
        x_root, y_root = y_root, x_root
    end
  
    @parent[x_root] += @parent[y_root]
    @parent[y_root] = x_root
  
    return true
  end

  # xが所属するグループのサイズを返す
  def size(x)
    return -@parent[root(x)]
  end
end


n,m = gets.chomp.split.map(&:to_i)
used = Array.new( n + 1, 0 )

# uf => @parent = [-1, -1, -1, ... -1], uf.size = n + 1
uf = UnionFind.new(n + 1)
print "uf.parent(initial) => #{uf.parent} \n"
print "used     (initial) => #{used} \n\n"

m.times do |i| 
  a, b = gets.chomp.split(" ").map(&:to_i)
  print "a,b              => #{a},#{b} \n"
  if uf.same_parent?(a, b)
    print "No( => same_parent(#{a},#{b}) )"
    exit
  end
  uf.merge(a, b)
  print "uf.parent    (i=#{i}) => #{uf.parent} \n"
  used[a] += 1
  used[b] += 1
  print "root         (i=#{i}) => #{uf.root(0)},#{uf.root(1)},#{uf.root(2)},#{uf.root(3)},#{uf.root(4)}  \n"
  print "used         (i=#{i}) => #{used} \n\n"

end

if used.find{|v| v >= 3 }
  print "No( => used.find( v >= 3 )"
  exit
end

puts "Yes"