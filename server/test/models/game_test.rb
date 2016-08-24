require 'test_helper'

class GameTest < ActiveSupport::TestCase
  def setup
    @test_obj = GameCreator.build
  end

  test 'to_dto returns correct hash' do
    expected = {"players"=>[{"name"=>"player0", "cards"=>[{"name"=>"player0card0"}, {"name"=>"player0card1"}, {"name"=>"player0card2"}, {"name"=>"player0card3"}]}, {"name"=>"player1", "cards"=>[{"name"=>"player1card0"}, {"name"=>"player1card1"}, {"name"=>"player1card2"}, {"name"=>"player1card3"}]}, {"name"=>"player2", "cards"=>[{"name"=>"player2card0"}, {"name"=>"player2card1"}, {"name"=>"player2card2"}, {"name"=>"player2card3"}]}, {"name"=>"player3", "cards"=>[{"name"=>"player3card0"}, {"name"=>"player3card1"}, {"name"=>"player3card2"}, {"name"=>"player3card3"}]}]}
    result = @test_obj.to_dto
    assert_equal expected, result
  end
end