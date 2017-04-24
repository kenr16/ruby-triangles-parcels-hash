require('sinatra')
require('sinatra/reloader')
require('rspec')
require('./lib/parcels')
also_reload('lib/**/*.rb')

get('/') do
  erb(:indexp)
end

get('/output') do
  @length = params.fetch('length').to_i
  @width = params.fetch('width').to_i
  @height = params.fetch('height').to_i
  @distance = params.fetch('distance').to_i
  @parcel1 = Parcel.new(@length, @width, @height)
  @volume = @parcel1.volume()
  @cost = @parcel1.cost_to_ship(@distance)
  erb(:output)
end
