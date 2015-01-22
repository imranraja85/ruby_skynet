require 'ruby_skynet/callable'
require 'ruby_skynet/mean'

# Sum of Squares
#
# Formula: 
#

module RubySkynet
  class SumOfSquares
    extend RubySkynet::Callable
    attr_reader :values, :mean

    def initialize(options = {})
      @values = options[:values]
      @mean   = RubySkynet::Mean.call({values: values})
    end

    def call
      values.reduce(0) {|sum, value| sum += (value - mean) ** 2}
    end
  end
end
