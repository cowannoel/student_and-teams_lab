require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../team')


  class TestTeam < Minitest::Test
    def setup
      @team = Team.new("The Burgh", ["Noel", "Alan"], "Fabio", 0)
  end

def test_get_team_name
    assert_equal("The Burgh", @team.team_name)
  end


  def test_get_team_players
      assert_equal(["Noel", "Alan"], @team.players)
    end


def test_add_player
  assert_equal(["Noel", "Alan", "Dave"], @team.add_player("Dave"))
end


def test_check_player_name
  assert_equal(true, @team.check_player_name("Alan"))
end


def test_won_or_lost__won
  assert_equal(3, @team.change_points(3))
end


def test_won_or_lost__lost
  assert_equal(0, @team.change_points(0))
end



end
