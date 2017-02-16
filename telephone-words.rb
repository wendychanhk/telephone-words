require 'pry'

class Words
  MAP = 
    {2 => ["A", "B", "C"], 
	 3 => ["D", "E", "F"], 
	 4 => ["G", "H", "I"], 
	 5 => ["J", "K", "L"],
	 6 => ["M", "N", "O"], 
	 7 => ["P", "Q", "R", "S"],
	 8 => ["T", "U", "V"], 
	 9 => ["W", "X", "Y", "Z"]}

  def telephoneWords arr_input
	arr_output = []
      MAP[arr_input[0]].each do |char_1| 
	    MAP[arr_input[1]].each do |char_2| 
	 	  str = char_1 + char_2 
	 	  arr_output << str 
	    end 
      end 
    arr_output
  end 
end
