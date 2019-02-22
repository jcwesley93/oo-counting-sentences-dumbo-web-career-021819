require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true 
    else false 
  end
  end

  def question?
    if self.end_with?("?")
      true
    else false
    end 
  end

  def exclamation?
    if self.end_with?("!")
      true
    else false
  end
  end

  def count_sentences
    #to split based on multiple conditions, use .split(/[cond, cond, cond]/)
    #how do you delete empty elements from an array?
    #.reject has not been working, and returns an enummerable. would require .to_a to return an array. 
    #.compact? no. .delete_if? possibly. delete_if{ |sentence| sentence == "" }
    
    self.split(/[".", "?", "!"]/).delete_if{ |sentence| sentence == "" }.length 
    # binding.pry
    
    #the above worked for all except for the complex case. 
  end
end