require 'ruby_skynet/sum_of_squares'
require 'ruby_skynet/callable'

# Variance is the the average of the squared differences from the mean.
#
# Formula: 
#   1) Calculate the mean
#   2) For each value, subtract the mean and square it and sum it up
#   3) Divide by the total number of values
#

module RubySkynet
  class Variance
    extend RubySkynet::Callable
    attr_reader :values

    def initialize(options = {})
      @values = options[:values]
    end

    def call
      squared_sum = RubySkynet::SumOfSquares.call({values: values})

      squared_sum.to_f / values.count
    end
  end
end
