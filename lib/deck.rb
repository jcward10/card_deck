require "card"

class Deck
  attr_accessor :deck

  def initialize
    @ranks = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
    @suits = [:C, :D, :H, :S]
    @i = 0
    @deck = []
    order
  end

  def order
    @suits.each do |suit|
      @ranks.size.times do |i|
        @deck << Card.new(@ranks[i], suit)
      end
    end
  end

  def draw
    if @deck.nil?
      order
      shuffle!
    end
    @deck.shift
  end

  def cards_left
    @deck.size
  end

  def shuffle!
    @deck.shuffle!
  end
  def size
    @deck.sizw
  end

end
