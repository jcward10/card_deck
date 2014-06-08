class Card
  attr_accessor :suit
  attr_accessor :rank

  def initialize(rank, suit) 
    @suit = suit
    @rank = rank
  end

  def print_card
    @rank.to_s + @suit.to_s
  end

  def greater_than?(card_rank)
    if rank_values > card_rank.rank_values
      true
    else
      false
    end
  end

  def ==(other)
    return false if other.nil?
    @rank == other.rank &&
    @suit == other.suit

  end

  def rank_values
    case @rank
    when :A then 11
    when :J then 10
    when :Q then 10
    when :K then 10
    else @rank
    end

  end
end
