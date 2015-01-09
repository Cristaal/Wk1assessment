class String

  define_method(:wordfreq) do |search_word|
    stripped_string = self.gsub(/[^a-zA-Z. ]/, ' ')
    word_list = stripped_string.split(" ")
    result = word_list.count(search_word)
    if word_list.count(search_word).==(1)
      result = "This word only appears once."
    end
    result
  end

end
