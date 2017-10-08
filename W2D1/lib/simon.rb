class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    puts "Welcome to Simon!"
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    puts "Showing sequence"
    show_sequence
    require_sequence
    if !@game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep(3)
      system("clear")
    end

  end

  def require_sequence
    puts "Repeat the sequence by typing out all the colors you saw"
    @seq.each do |color|
      str = gets.chomp
      if str!=color
        @game_over = true
        return
      end
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Correct!"
  end

  def game_over_message
    puts "You lost!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
    #self.play
  end
end


if __FILE__==$0
  game = Simon.new
  game.play
end
