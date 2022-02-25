require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")

  end

  def count_sentences
    ends = []
    # self.split(" ").each { |el| el.end_with?(".", "?", "!") ? ends << el : nil} #this splits the string at spaces into an array, and if the array element ends with a sentence ending punctuation it gets added to a new array.
    # return ends.length #then we just return the length of the new array with the sentence enders...
    # binding.pry
    self.split(" ").each { |el| el.end_with?(/[.?,!]/) ? ends << el : nil}
    return ends.length
  end
end
binding.pry