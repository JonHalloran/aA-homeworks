
class Stack

  def initialize(arr = nil)
    @arr = arr || []
  end

  def add(el)
    @arr.push(el)
  end

  def remove
    @arr.pop
  end

  def show
    @arr
  end

end
