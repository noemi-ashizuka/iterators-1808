def timer
  start_time = Time.now # 2
  # sleep(2)
  if block_given?
    yield # calls the block and execute the code in the block
  else
    puts "No block"
  end
  puts "Elapsed time: #{Time.now - start_time}" # 4
end



# A
# 1
timer do
  puts "I'm doing something in the block" # 3
  sleep(2) # 3
  puts "Done" # 3
end

# B
# 1
# timer do 
#   puts "this is the second block" # 3
#   sleep(4) # 3 
#   puts "Done" # 3
# end


timer