class Hero
  attr_accessor :name, :type, :booty

  @@heroes = []

  def initialize(attributes)
      attributes.each {|key, value| self.send(("#{key}="), value)}
      @@heroes << self 
  end

  def self.all
    @@heroes
  end

  def self.clear
    @@heroes.clear
  end


end