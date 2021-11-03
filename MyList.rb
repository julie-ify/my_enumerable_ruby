require_relative "MyEnumerable"

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each
    @list.each { |n| yield n }
  end
end
