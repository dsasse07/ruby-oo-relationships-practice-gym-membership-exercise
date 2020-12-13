class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    self.memberships(&:gym)
  end

  def self.average_lift_total
    (self.all.sum(&:lift_total) / self.all.count).to_f
  end

  def total_membership_costs
    self.memberships.sum(&:cost)
  end

  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end
  
end
