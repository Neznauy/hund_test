require_relative './config.rb'
require_relative './lib/services.rb'

s = Services::ServiceOne.new({name: 'name', value: 1, env: Application.config.env}).tap(&:call)
puts s.result

s = Services::ServiceOne.new({name: 'name', value: 1, env: Application.config.env}).tap(&:call)
puts s.result

s = Services::ServiceOne.new({name: nil, value: 1}).tap(&:call)
puts s.result

s = Services::ServiceTwo.new(Application.config.env).tap(&:call)
puts s.result

puts Application.config.another_value
