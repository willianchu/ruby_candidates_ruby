# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

pp @candidates

puts "Find"
pp find(11) 

print "experienced? "
pp experienced? @candidates[5] 

puts "qualified_candidates"
pp qualified_candidates @candidates

puts "ordered_by_qualifications"
pp ordered_by_qualifications @candidates
