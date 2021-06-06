require 'securerandom'

module Services
  class ServiceTwo
    FUNCTIONS = {
      test: lambda { SecureRandom.hex(10) },
      prod: lambda { SecureRandom.uuid }
    }.freeze

    attr_reader :result

    def initialize(env)
      self.env = env
    end

    def call
      self.result ||= begin
        FUNCTIONS.fetch(env).call
      rescue StandardError => _e
        nil
      end
    end

    private

    attr_accessor :env
    attr_writer :result
  end
end
