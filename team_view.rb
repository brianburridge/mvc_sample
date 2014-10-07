class TeamView
  def self.cheer(team)
    puts "Go #{team.team_name}!"
  end

  def self.announce_win(team)
    puts "The #{team.team_name} from #{team.home_town} wins!"
  end
end
