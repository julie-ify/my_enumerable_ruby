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
    return max
  end

  def min
    min = +1.0 / 0.0
    each { |n| min = n if n < min }
    return min
  end

  def sort
    sorted = []
    newlist = @list.dup
    for x in 1..newlist.count do
      sorted.push(newlist.min)
      newlist.delete(newlist.min)
    end
    return sorted
  end
end
