require('sinatra')
require('sinatra/reloader')
require('./lib/wordfreq')


get('/') do
  erb(:form)
end

get('/result') do
  @first_sentence = params.fetch("first_sentence")
  @search_word = params.fetch("search_word")
  @result = params.fetch("first_sentence").wordfreq(params.fetch("search_word"))
    if @first_sentence.empty? || @search_word.empty?
      @result = "Please enter a value"
    else
      @result
    end
  erb(:result)
end
