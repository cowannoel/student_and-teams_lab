class Team
attr_reader :team_name, :players
attr_accessor :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end


def add_player(player_name)
  @players.push(player_name)
end


def check_player_name(found_player)
  for player in @players
    if player == found_player
        return true
    end
  end
end


def change_points(match_result)
  @points += match_result
end











end
