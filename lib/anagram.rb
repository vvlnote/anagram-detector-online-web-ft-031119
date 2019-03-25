# Your code goes here!
class Anagram
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(str_arr)
    sorted_word = @word.split(//).sort_by!{|e| e.downcase}
    matched_arr = []
    str_arr.each do |str|
      temp = str.split(//).sort_by!{|e| e.downcase}
      if sorted_word == temp
        matched_arr << str
      end
    end
    matched_arr
  end
end