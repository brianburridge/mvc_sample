class Controller

  def self.cheer
    Controller.prompt_for_team_info if @team == nil
    TeamView.cheer(@team)
  end

  def self.announce_win
    Controller.prompt_for_team_info if @team == nil
    TeamView.announce_win(@team)
  end

  private

  def self.prompt_for_team_info
    print "Please enter your team's name: "
    team_name = $stdin.gets.strip

    print "Please enter your team's home town: "
    home_town = $stdin.gets.strip

    @team = Team.new
    @team.team_name = team_name
    @team.home_town = home_town
  end
end
