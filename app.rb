require('sinatra')
require('sinatra/reloader')
require('./lib/wordfreq')


get('/') do
  erb(:form)
end

get('/result') do
  @sentence = params.fetch("first_sentence")
  @search = params.fetch("first_sentence").wordfreq("search_word")
  @result = params.fetch("first_sentence").wordfreq("search_word")
  erb(:result)
end
