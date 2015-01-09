class String
  define_method(:wordfreq) do |search_word|
    word_list = self.split(" ",)
    word_list.count(search_word)
   end
end
