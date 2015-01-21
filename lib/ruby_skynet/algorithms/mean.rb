module RubySkynet
  module Algorithms
    class Mean
      def call(values)
        values.inject(:+).to_f / values.count
      end
    end
  end
end
