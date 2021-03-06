require 'ruby_skynet/mean'
require 'ruby_skynet/variance'

module RubySkynet
  class SimpleLinearRegression
    attr_reader :x_coordinates, :y_coordinates, :x_mean, :y_mean

    def initialize(coordinates)
      raise "You should pass in an array of coordinates" if coordinates.empty?

      @x_coordinates = coordinates.map(&:first)
      @y_coordinates = coordinates.map(&:last)
      @x_mean        = RubySkynet::Mean.call({values: @x_coordinates})
      @y_mean        = RubySkynet::Mean.call({values: @y_coordinates})
    end

    #A = MY - bMX
    def y_intercept
      y_mean - (slope * x_mean)
    end

    #b = r sY/sX
    def slope
      numerator = (0...x_coordinates.length).reduce(0) do |sum, i|
        sum + ((x_coordinates[i] - x_mean) * (y_coordinates[i] - y_mean))
      end

      denominator = RubySkynet::SumOfSquares.call({values: x_coordinates})

      (numerator / denominator)
    end
  end
end
