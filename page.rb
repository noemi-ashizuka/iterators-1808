def page_layout
  "
  ----------------------------------
  LE WAGON 🚌            Login Home   
  ----------------------------------
                                  
   #{yield}                        
                                  
                    
   

                                  
  ----------------------------------
   Made with 😘 by Noemi        2022
  ----------------------------------
  "
end

def index_page
  page_layout do 
    "Hello everyone"
  end
end

def about_page
  page_layout do 
    "My name is Noemi. \n   I am from Italy and I love drawing."
  end
end

# puts "Index page:"
# puts index_page

# puts "About page:"
# puts about_page
answer = ""

while answer != "0"
  puts "Main menu"
  puts "1 - Index page"
  puts "2 - About page"
  puts "0 - Exit program"
  answer = gets.chomp
  case answer
  when '1' then puts index_page
  when '2' then puts about_page
  end
end
