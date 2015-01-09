class String

  define_method(:wordfreq) do |search_word|
    find_word = search_word.downcase()
    stripped_string = self.gsub(/[^a-zA-Z. ]/, ' ').downcase()
    word_list = stripped_string.split(" ")
    result = word_list.count(find_word)
    if word_list.count(find_word).==(1)
      result = "This word only appears once."
    end
    result
  end
end
