fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish',
            'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def slug_oct(fish_arr)
  current_fish = ""
  found_better = true
  while found_better
    found_better = false
    fish_arr.length.times do |ind|
      if fish_arr[ind].length > current_fish.length
        current_fish = fish_arr[ind]
        found_better = true
      end
    end
  end
  current_fish
end

def dom_oct(fish_arr)
  fish_arr.sort_by { |el| el.length }.last
end

def clev_oct(fish_arr)
  current_fish = ""
  fish_arr.length.times do |ind|
    current_fish = fish_arr[ind] if current_fish.length < fish_arr[ind].length
  end
  current_fish
end


tile_arr = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
tile_hash = { "up" => 0,
              "right-up" => 1,
              "right" => 2,
              "right-down" => 3,
              "down" => 4,
              "left-down" => 5,
              "left" => 6,
              "left-up" => 7 }
p tile_hash

def slow_dance(tile, arr)
  arr.index(tile)
end


def fast_dance(tile, tile_hash)
  p tile_hash
  tile_hash[tile]
end

# 
# p fast_dance("up", tile_hash)
# p slow_dance("down", tile_arr)




# fish = slug_oct(fish_arr)

# p fish
# p "slug #{fish}"
#
# fish = dom_oct(fish_arr)
# p "dom_oct #{fish}"
#
# fish = clev_oct(fish_arr)
# p "clev_oct #{fish}"
