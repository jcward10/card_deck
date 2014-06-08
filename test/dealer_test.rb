# dealer Test
require "minitest/autorun"
require "Dealer"
class DealerTest < MiniTest::Unit::TestCase
  def setup
    @dealer = Dealer.new
  end

  def test_dealer_hand_not_nil
    @dealer.dealer.deal_player
    refute_nil @dealer.dealer.hand
  end

  def test_dealer_hit
    @dealer.dealer.deal_player
    @dealer.dealer_hit
    puts @dealer.dealer.sum.inspect
    puts
    puts @dealer.dealer.hand.inspect
    assert_operator @dealer.dealer.sum, :>=, 17
  end
end
