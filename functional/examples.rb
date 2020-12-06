
# Simple add functionality
  add = lambda { |a,b| a + b }
  add.(10,20) # output  => 30 
 
# Add functionality done with currying 
  curried_add = lambda { |a| lambda { |b| a + b } }
  curried_add.(10).(10) # output  => 20

# Using 10 as the base - partial application
  curried_add10 = curried_add.(10)
  curried_add10.(50) # output  => 60

# Using ruby method for currying
  curried_add_by_ruby =  add.curry
  curried_add100 = curried_add_by_ruby.(100)
  curried_add100.(50) # output  => 150
