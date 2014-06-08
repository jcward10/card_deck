# dealer
class Dealer
  attr_accessor :cards, :bet, :move
  def initialize(deck)
    # @deck = Deck.new
    # @deck.shuffle! 
    @cards = Hand.new
    @move = 'h'
    @bet = Betting.new
  end

  def deal_player(deck)
    @cards.hand =[]
    @ace = false
    2.times {@cards.hit(deck)}
  end

  def hit_or_stay(deck)

    if @cards.add <17
      puts 'Dealer Hits'
      @move = 'h'
      @cards.hit(deck)
    else
      @move = 's'
      puts 'Dealer Stands'
    end
  end

  def playing(deck)
    deal_player(deck)
    @move = 'h'
    while @move == 'h'
      @cards.dealer_hand
      hit_or_stay(deck)
      if @cards.bust
        @cards.print_hand
        puts "Dealer busted!"
        @move = 's'
      end
    end
  end

end
