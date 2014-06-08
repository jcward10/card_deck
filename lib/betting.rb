# betting
class Betting
  attr_accessor :total, :bet
  def initialize
    @total = 100
  end

  def bet_amt
    @bet = gets.chomp.to_i
  end

  def lose
    @total -= @bet
  end

  def win
    @total += @bet
  end

  def total
    @total.to_i
  end
end
