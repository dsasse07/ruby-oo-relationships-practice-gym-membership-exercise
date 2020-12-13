# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
globo = Gym.new("Globo Gym") #3 members
ajoes = Gym.new("Average Joes") #1 member
golds = Gym.new("Golds Gym") #1 members

pete = Lifter.new("Skinny Pete", 90)
maggie = Lifter.new("Crossfit Maggie", 492)
derrick = Lifter.new("Dosing Derrick", 9313)
sophie = Lifter.new("Strong Sophie", 1334)

Membership.new(100, pete, ajoes)
Membership.new(200, maggie, globo)
Membership.new(200, derrick, globo)
Membership.new(150, derrick, golds)
Membership.new(200, sophie, globo)

binding.pry

puts "Gains!"
