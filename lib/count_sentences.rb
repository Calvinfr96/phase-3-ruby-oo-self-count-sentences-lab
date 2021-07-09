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
    all_sentences = self.split(/\.|\?|\!/)
    true_sentences = all_sentences.delete_if do |word|
      word.size < 2
    end
    all_sentences.size
  end
end