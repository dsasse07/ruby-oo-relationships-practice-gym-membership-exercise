class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    self.memberships.map(&:lifter)
  end

  def lifters_names
    self.lifters.map(&:name)
  end

  def combined_lift_total
    self.lifters.sum(&:lift_total)
  end

end
