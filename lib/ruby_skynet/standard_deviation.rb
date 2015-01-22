require 'ruby_skynet/callable'
require 'ruby_skynet/variance'

#
# Standard Deviation is a measure of how spread out numbers are.
#
# Formula: The square root of the Variance
#

module RubySkynet
  class StandardDeviation
    extend RubySkynet::Callable
    attr_reader :values

    def initialize(options)
      @values = options[:values]
    end

    def call(options = {})
      Math.sqrt(RubySkynet::Variance.new.call(values))
    end

  end
end
