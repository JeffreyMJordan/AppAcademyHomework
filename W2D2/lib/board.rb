require 'byebug'
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1=name1 
    @name2 = name2
    @cups = place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    arr = Array.new(14){Array.new}
    arr.each_with_index do |el, idx| 
      unless idx==6 or idx==13 
        el.concat([:stone,:stone,:stone,:stone])
      end
    end
    arr 
  end

  def valid_move?(start_pos)
    #byebug
    if start_pos<=0 or start_pos>=14
      raise "Invalid starting cup" 
    end

  end

  def make_move(start_pos, current_player_name)
      #byebug
      opponent_cup = get_opponent_cup(current_player_name)
      stones = @cups[start_pos].dup
      @cups[start_pos] = []
      idx = start_pos+1
      until stones.empty? do 
        idx = idx % @cups.length
        unless idx==opponent_cup 
          @cups[idx] << stones.shift
        end
        idx += 1 
      end
      render
      next_turn(idx-1, current_player_name)
  end

  def get_opponent_cup(name)
    return 6 if name==@name2
    return 13 if name==@name1
  end


  def next_turn(ending_cup_idx, name)
    return :prompt if ending_cup_idx==6 and name==@name1
    return :prompt if ending_cup_idx==13 and name==@name2
    return :switch if @cups[ending_cup_idx].length==1
    ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..5].inject(0){|acc, el| acc + el.length}==0
    return true if @cups[7..12].inject(0){|acc, el| acc + el.length}==0
    false
  end

  def winner
    p1_score = @cups[6].length 
    p2_score = @cups[13].length 
    if p1_score==p2_score 
      :draw
    else 
      return @name1 if p1_score>p2_score 
      return @name2 if p2_score>p1_score
    end
  end
end
