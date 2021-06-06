require 'dry-configurable'

class Application
  extend Dry::Configurable

  setting :env, :test

  setting :another_value, 'any string'
end
