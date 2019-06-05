require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def test_rock_scissors
    game = Game.new("rock","scissors")
    result = game.compare
    assert_equal("Rock wins", result)
  end

  def test_rock_paper
    game = Game.new("rock","paper")
    result = game.compare
    assert_equal("Paper wins", result)
  end

  def test_rock_rock
    game = Game.new("rock","rock")
    result = game.compare
    assert_equal("Draw", result)
  end

  def test_paper_scissors
    game = Game.new("paper","scissors")
    result = game.compare
    assert_equal("Scissors wins", result)
  end

  def test_paper_paper
    game = Game.new("paper","paper")
    result = game.compare
    assert_equal("Draw", result)
  end

  def test_paper_rock
    game = Game.new("paper","rock")
    result = game.compare
    assert_equal("Paper wins", result)
  end

  def test_scissors_scissors
    game = Game.new("scissors","scissors")
    result = game.compare
    assert_equal("Draw", result)
  end

  def test_scissors_paper
    game = Game.new("scissors","paper")
    result = game.compare
    assert_equal("Scissors wins", result)
  end

  def test_scissors_rock
    game = Game.new("scissors","rock")
    result = game.compare
    assert_equal("Rock wins", result)
  end


end
