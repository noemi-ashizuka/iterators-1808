def cow_say(sentence)
  # yield(sentence) # pass argument to the yield
            # 2
  return " #{yield(sentence)}??
            \\   ^__^
             \\  (oo)\\_______
                (__)\\      )\\/\\
                    ||----w |
                    ||     ||"
end

                                        # parameter
cow =  cow_say("hello everybody!") do |words|
  words.upcase
end

# 1 method call
puts cow

cow_two =  cow_say("hello everybody!") do |sentence|
  "********#{sentence}**********"
end

puts cow_two