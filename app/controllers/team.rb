class Team
  attr_accessor :name, :motto

  @@team_members = []

  def initialize(attributes)
      attributes.each {|key, value| self.send(("#{key}="), value)}
      @@team_members << self
  end

  def self.all
    @@team_members
  end

  def self.clear
    @@team_members
  end


end
