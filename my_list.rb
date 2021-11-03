require_relative "my_enumerable"

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
    puts @list
  end

  def each
    @list.each { |n| yield n }
  end
end

list = MyList.new(1, 2, 3, 4)
p list.all? { |e| e < 5 }
p list.all? { |e| e > 5 }
p list.any? { |e| e == 2 }
p list.any? { |e| e == 5 }
p list.filter { |e| e.even? }
