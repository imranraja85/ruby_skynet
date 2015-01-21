# Variance is the the average of the squared differences from the mean.
#
# Formula: 
#   1) Calculate the mean
#   2) For each value, subtract the mean and square it and sum it up
#   3) Divide by the total number of values
#

module RubySkynet
  module Algorithms
    class Variance
      def call(values)
        mean        = values.inject(:+) / values.count
        squared_sum = values.reduce(0) {|sum, value| sum += (value - mean) ** 2}

        squared_sum / values.count
      end
    end
  end
end
