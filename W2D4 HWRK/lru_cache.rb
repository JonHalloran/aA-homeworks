class LRUCache

  attr_reader :cache, :max_length
  

  def initialize
    @cache = []
    @max_length = 5
  end

  def count
    # returns number of elements currently in cache
    self.cache.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    if cache.include?(el)
      break
    end

    if count == max_length
      self.cache.pop
    end
    unless self.include?(el)
      self.uhshift(el)
    end

  end

  def show
    # shows the items in the cache, with the LRU item first
    self.cache
  end

  private
  # helper methods go here!

end
