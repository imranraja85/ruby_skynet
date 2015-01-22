require 'ruby_skynet/callable'

module RubySkynet
  class Mean
    extend RubySkynet::Callable
    attr_reader :values

    def initialize(options = {})
      @values = options[:values]
    end

    def call
      values.inject(:+).to_f / values.count
    end
  end
end
