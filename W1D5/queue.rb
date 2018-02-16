
class Queue

  def initialize(arr = nil)
    @arr = arr || []
  end

  def enqueue(el)
    @arr.unshift(el)
  end

  def dequeue
    @arr.pop
  end

  def show
    @arr
  end
end
