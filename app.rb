require('sinatra')
require('sinatra/reloader')

get('/') do
  erb(:form)
end

get('/score') do
  @score = params.fetch('score').scrabble()
  erb(:score)
end
