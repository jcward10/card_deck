# Player file
require "hand"

class Player
  attr_accessor :cards, :bet, :move
  def initialize(deck)
    # @deck = Deck.new
    # @deck.shuffle!
    @cards = Hand.new
    @move = 'h'
    @bet = Betting.new
    @blackjack = false
  end

  def deal_player(deck)
    @cards.hand =[]
    @ace = false
    # @bust = false
    2.times {@cards.hit(deck)}
    blackjack
  end

  def blackjack
    if @cards.add == 21
      @blackjack = true
      @move = 's'
      puts 'WINNER WINNER CHICKEN DINNER!'
    end
  end

  def hit_or_stay(deck)
    print "Do you want to (h)it or (s)tand?"
    @move = gets.chomp.to_s.downcase
    if @move == 'h'
      @cards.hit(deck)
    end
    @cards.add
  end

  def playing(deck)
    print "How much do you want to bet? (Max: $#{@bet.total}) Amount: $"
    @bet.bet_amt
    @move = 'h'
    deal_player(deck)
    while @move == 'h'
      @cards.print_hand
      hit_or_stay(deck)
      @cards.ace
      if @cards.bust
        @cards.print_hand
        puts "You busted!"
        @move = 's'
      end
    end
  end

end
