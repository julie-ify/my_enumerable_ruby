module MyEnumerable
  def all?
    each { |n| return false unless yield(n) }
    true
  end

  def any?
    each { |n| return true if yield(n) }
    false
  end

  def filter
    arr = []
    each { |n| arr.push(n) if yield(n) }
    arr
  end

  def max
    max = 0
    each { |n| max = n if n > max }
    max
  end

  def min
    min = +1.0 / 0.0
    each { |n| min = n if n < min }
    min
  end

  def sort
    sorted = []
    newlist = @list.dup
    (1..newlist.count).each do |_x|
      sorted.push(newlist.min)
      newlist.delete(newlist.min)
    end
    sorted
  end
end
