class Team
  attr_accessor :name, :motto

  @@team_members = []

  def initialize(name, motto)
    @name = name
    @motto = motto
  end

  def self.all
    @@team_members
  end

  def self.clear
    @@team_members.clear
  end


end
