class String
  define_method(:wordfreq) do |search_word|
    stripped_string = self.gsub(/[^a-zA-Z. ]/, ' ')
    word_list = stripped_string.split(" ")
    word_list.count(search_word)
   end
end
