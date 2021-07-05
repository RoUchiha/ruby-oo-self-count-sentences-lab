require 'pry'

class String

  def sentence?
    if self[-1, 1] == "."
      return true
    else
      return false
    end
  end

  def question?
    if self[-1, 1] == "?"
      return true
    else
      return false
    end
  end

  def exclamation?
    if self[-1, 1] == "!"
      return true
    else
      return false
    end
  end

  def count_sentences
    punctuation = [".", "?", "!"]
    sentences = []
    sentences = self.split(Regexp.union(punctuation))
    sentences.delete_if do |sentence|
      sentence.length < 2
    end
  
    return sentences.length
   
  end
   
end