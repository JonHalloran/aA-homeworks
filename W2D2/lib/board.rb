require_relative "player"

class Board
  attr_accessor :cups, :name1, :name2

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2

    @cups = Array.new {[]}
    place_stones
  end

  def place_stones
    14.times {self.cups << [:stone, :stone, :stone, :stone]}

    self.cups[6] = []
    self.cups[13] = []

    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise ArgumentError.new("Invalid starting cup") unless start_pos.between?(1, 6)
  end

  def make_move(start_pos, current_player_name)
    stone_number = self.cups[start_pos].length
    p self.cups[start_pos]
    self.cups[start_pos] = []
    p self.cups[start_pos]
    i = start_pos + 1
    while stone_number > 0
      i = 0 if i == 14
      if i == 6 && current_player_name == self.name2
      elsif i == 13 && current_player_name == self.name1
      else
        self.cups[i] << :stone
        stone_number -= 1
      end
      i += 1
    end
    render
    next_turn(i - 1)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    return :prompt if [6, 13].include?(ending_cup_idx)
    return :switch if self.cups[ending_cup_idx].length == 1
    return ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    a_empty = [*0..5].all? { |e| self.cups[e].length == 0 }
    b_empty = [*7..12].all? { |e| self.cups[e].length == 0 }
    a_empty || b_empty
  end

  def winner
    p1_score = self.cups[6].length
    p2_score = self.cups[13].length

    if p1_score > p2_score
      self.name1
    elsif p1_score == p2_score
      :draw
    else
      self.name2
    end
  end
end
