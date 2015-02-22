class String

  def wordfreq(search_word)
    find_word = search_word.downcase()
    stripped_string = self.gsub(/[^a-zA-Z. ]/, ' ').downcase()
    word_list = stripped_string.split(" ")
    result = word_list.count(find_word)
    if word_list.empty? || find_word.empty?
      return false
    elsif word_list.count(find_word).==(1)
      result
    end
    result
  end
end
