require('sinatra')
require('sinatra/reloader')
gem('sinatra-contrib')

require('./lib/wordfreq')


get('/form') do
  "test"
end
