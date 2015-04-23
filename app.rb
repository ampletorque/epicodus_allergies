require('sinatra')
require('sinatra/reloader')
require('./lib/allergies')


get('/') do
  erb(:index)
end

get('/results') do
  @results = params.fetch('allergy').allergies()
  erb(:results)
end
