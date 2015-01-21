require 'ruby_skynet/callable'
require 'ruby_skynet/algorithms/variance'

#
# Standard Deviation is a measure of how spread out numbers are.
#
# Formula: The square root of the Variance
#

module RubySkynet
  module Algorithms
    class StandardDeviation
      extend RubySkynet::Callable
      attr_reader :values

      def initialize(options)
        @values = options[:values]
      end

      def call(options = {})
        Math.sqrt(RubySkynet::Algorithms::Variance.new.call(values))
      end

    end
  end
end
