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
    self.split(/(!+|\?+|\.+)/).delete_if {|string| string =~ /(!+|\?+|\.+)/}.count
    #sentence_array.delete_if {|string| string =~ /(!+|\?+|\.+)/}
    #sentence_array.count
  end
end