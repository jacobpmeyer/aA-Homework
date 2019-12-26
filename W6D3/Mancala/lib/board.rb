require "byebug"

class Board
  attr_accessor :cups
  attr_reader :plyr1, :plyr2

  def initialize(name1, name2) 
    @plyr1 = name1
    @plyr2 = name2
    @cups = Array.new(14) { Array.new }
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    self.cups.each_with_index do |cup, i|
      unless i == 6 || i == 13
        4.times { cup << :stone }
      end
    end
  end

  def valid_move?(start_pos)
    unless (0..13).include?(start_pos)
      raise 'Invalid starting cup'
    end
    if self.cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    pos = start_pos
    until self.cups[start_pos].empty?
      pos += 1
      pos = 0 if pos >= 14
      if (pos == 6 && (current_player_name != self.plyr1)) ||
        (pos == 13 && (current_player_name != self.plyr2))
        next
      end
      self.cups[pos] << self.cups[start_pos].shift
    end
    self.render
    self.next_turn(pos, current_player_name)
  end

  def next_turn(last_cup, name)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if last_cup == 13 && name == self.plyr2 || 
      last_cup == 6 && name == self.plyr1
      return :prompt
    elsif self.cups[last_cup].empty?
      return :switch
    else
      last_cup
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
