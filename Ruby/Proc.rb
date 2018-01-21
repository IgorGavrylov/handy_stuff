# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]

# Complete this as a new Proc
over_4_feet = Proc.new {|x| x>=4}

# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)

puts can_ride_1
puts can_ride_2

################################################################

def greeter
  yield
end

phrase = Proc.new {puts "Hello there!"}

greeter(&phrase)

phrase.call

#################################################################

numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array =numbers_array.collect(&:to_s)

puts strings_array

#################################################################

#Proc vs. Lambda

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda

#################################################################

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda {|x| x.is_a? Symbol}

symbols = my_array.select(&symbol_filter)

puts symbols

#################################################################

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
ints = odds_n_ends.select{|x| x.is_a? Integer}
puts ints

ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]
under_100 = Proc.new {|x| x<100}
youngsters = ages.select(&under_100)
puts youngsters

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda {|k,v| v < "M"}
a_to_m = crew.select(&first_half)
puts a_to_m