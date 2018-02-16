
class Map

  def initialize(arr = nil)
    @map = arr || []
  end

  def assign(key, value)
    key_location = @map.index {|arr| arr[0] == key}
    if key_location
      @map.delete_at (key_location)
    end
    @map << [key, value]
  end

  def lookup(key)
    key_location = @map.index {|arr| arr[0] == key}
    @map[key_location][1]
  end

  def delete(key)
    key_location = @map.index {|arr| arr[0] == key}
    @map.delete_at (key_location)
  end
end
