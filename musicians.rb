musicians = ["Stuart", "Roman", "Adam", "Claudia", "Steven"]
#             0         1          2
#                                         -2             -1

musicians.length # returns the number of elements in the array
musicians.index("Steven")
# CRUD

# Read
musicians[0] # returns the element at that index
musicians[-1] # returns the element
musicians[0..2] # returns an array
musicians.first # returns the first element
musicians.last # returns the last element

# Create
musicians << "Dylan"
musicians.push("Mark")

# Update
musicians[2] = "Dylan"
musicians[musicians.index("Dylan")] = "Arisa"

# Delete
musicians.delete("Stuart") # this will delete all the strings "Stuart" from the array
musicians.delete_at(0) # deletes only the element at that index

# for index in (0...musicians.length)
#   puts "#{index}. #{musicians[index]}"
# end

# for musician in musicians
#   puts "#{musicians.index(musician) + 1}. #{musician}"
# end


musicians = ["Stuart", "Roman", "Adam", "Claudia", "Steven", "Stuart"]

# Iterators

# .each => returns the original array

# musicians_two = musicians.each do |musician|
#   puts "#{musicians.index(musician)} #{musician}!"
# end

# p musicians_two


# upcased_musicians = []

# musicians.each do |musician|
#   upcased_musicians << musician.upcase
# end

# # p musicians
# p upcased_musicians

# .each_with_index => returns the original array

# musicians.each_with_index do |musician, index|
#   puts "#{index + 1}. #{musician}"
# end

# .map => returns a new array with the modified elements

upcased_musicians = musicians.map do |musician|
  musician.upcase
  # puts "hi"
end

# p musicians
p upcased_musicians

# .count => returns an integer, the count of the elements which follow the rule in the block
# s_musicians = musicians.count do |musician|
#   musician.start_with?("S")
# end

# p s_musicians

# .select => filters the original array by a candition and returns a new array with just the element for which the condition is true

# s_musicians = musicians.select do |musician|
#   musician.start_with?("S")
# end

# p s_musicians

# reject => opposite of select, returna an array with the element for which the condition is FALSE

# not_s_musicians = musicians.reject do |musician|
#     # musician.start_with?("S")
#     musician.length > 3
#   end
  
# p not_s_musicians

# select and reject return an empty array if no matches

# .all? => returns a boolean, check if a condition is true for all the elements in the array

# s_names = musicians.all? do |musician|
#   musician.start_with?("S")
# end

# p s_names

# .any? => check if the condition is true for at least one element - boolean
# s_names = musicians.any? do |musician|
#   musician.start_with?("S")
# end

# p s_names

# .find => returns ONE element, the first element that matches the condition

# s_names = musicians.find do |musician|
#   musician.start_with?("S")
# end

# p s_names

# p musicians.find { |musician| musician.start_with?("S") }