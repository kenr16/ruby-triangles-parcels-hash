require('sinatra')
require('sinatra/reloader')
require('rspec')
require('./lib/triangles')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/display') do
  @first_side = params.fetch('first_side')
  @second_side = params.fetch('second_side')
  @third_side = params.fetch('third_side')
  @test_trio = Triangle.new(@first_side, @second_side, @third_side)
  erb(:display)
end
