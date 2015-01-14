module RubySkynet
  module Algorithms
    class SimpleLinearRegression
      attr_reader :x_coordinates, :y_coordinates

      def initialize(coordinates)
        raise "You should pass in an array of coordinates" if coordinates.empty?

        @x_coordinates = coordinates.map(&:first)
        @y_coordinates = coordinates.map(&:last)
      end

      def y_intercept
        mean(y_coordinates) - (slope * mean(x_coordinates))
      end

      def slope
        x_mean = mean(x_coordinates)
        y_mean = mean(y_coordinates)

        numerator = (0...x_coordinates.length).reduce(0) do |sum, i|
          sum + ((x_coordinates[i] - x_mean) * (y_coordinates[i] - y_mean))
        end

        denominator = x_coordinates.reduce(0) do |sum, x|
          sum + ((x - x_mean) ** 2)
        end

        (numerator / denominator)
      end

      def mean(values)
        total = values.reduce(&:+)
        total.to_f / values.length
      end
    end
  end
end
