require('sinatra')
require('sinatra/reloader')
also_reload('lib/**.*.rb')
require('pry')
require('./lib/words')


get('/') do
  @list = Word.all()
  erb(:input)
end

post('/') do
  word = params["word"]
  define = params["define"]
  phrase = Word.new ({:word => word, :define => define})
  phrase.save()
  @list = Word.all()
  erb(:input)
end

get('/output/:id') do
  @contact = Word.find(params[:id])
  erb(:output)
end

post('/output') do
  own = params["own"]
  address = Definitions.new({:own=> own})
  address.save()
  @own_list = Definitions.all()
  erb(:dictionary)
end

get('/dictionary') do
  @own_list = Definitions.all()
  erb(:dictionary)
end
