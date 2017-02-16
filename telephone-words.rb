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

  def telephoneWords(arr_input)
    recursive(arr_input, 0, [])
  end

  def recursive(arr_input, i, arr_output)   
    if i == arr_input.count #base case 
      puts arr_output.join("")
      return 
  end
    arr_char = []
    arr_input.each do |int|
	  arr_char << MAP[int]
    end 
    0.upto(arr_char[i].count - 1) do |j|
      arr_output << arr_char[i][j]
      recursive(arr_input, i + 1, arr_output) # getting closer to base case 
      arr_output.pop 
    end
  end
end 

words = Words.new 
words.telephoneWords([9,2,4])