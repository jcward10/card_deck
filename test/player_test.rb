# Player Test File
require "minitest/autorun"
require "Player"

class  PlayerTest < MiniTest::Unit::TestCase
  def setup
    @player = Player.new
  end
  def test_players_hand_not_nil
    @player.deal_player
    refute_nil @player.hand
  end

  def test_hand_rank_and_suit
    @player.deal_player
    refute_nil @player.hand[0].rank
    refute_nil @player.hand[1].rank
    refute_nil @player.hand[0].suit
    refute_nil @player.hand[1].suit
  end

  def test_hit
    @player.deal_player
    @player.hit
    refute_equal @player.hand.size, 2

    @player.hit
    refute_equal @player.hand.size, 3
  end

  def test_add
    @player.deal_player
    refute_equal @player.add, @player.hand[0].rank_values
  end
end
