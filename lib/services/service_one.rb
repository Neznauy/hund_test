module Services
  class ServiceOne
    attr_reader :result

    def initialize(params)
      self.params = params
      self.result = nil
    end

    def call
      self.result = !name.nil? && !value.nil? && test?
    end

    private

    attr_accessor :params
    attr_writer :result
    
    def name
      params[:name]
    end

    def value
      params[:value]
    end

    def test?
      params[:env] == :test                  
    end
  end
end
