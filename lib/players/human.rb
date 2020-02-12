module Players
  
class Players::Human < Player
 
  
  def move(board=nil)
  puts "Where would you like to go?"
  input = gets.strip
  end
end

end