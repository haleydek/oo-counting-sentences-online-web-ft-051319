require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    self.scan(/[.?!]\s\w|\w[.?!]{2}|\w[.?!]\z/).count
  end
end