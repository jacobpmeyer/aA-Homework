require 'byebug'


class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def add_random_color
    self.seq << COLORS.sample
  end

  def game_over_message

  end

  def play
    until self.game_over
      self.take_turn
    end
    self.game_over_message
    self.reset_game
  end

  def require_sequence

  end

  def reset_game

  end

  def round_success_message

  end

  def show_sequence
    self.add_random_color
  end

  def take_turn
    unless self.game_over
      debugger
      self.show_sequence
      self.require_sequence
      self.round_success_message
    end
  end

end
