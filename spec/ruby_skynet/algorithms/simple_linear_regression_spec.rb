require 'ruby_skynet/algorithms/simple_linear_regression'
require "ruby_skynet/algorithms/standard_deviation"

describe RubySkynet::Algorithms::SimpleLinearRegression do
  subject {described_class}

  it "has a y intercept of 1 and slope of 0" do
    coordinates = [[0,1], [1,1], [2,1]]
    calc = subject.new(coordinates)
    expect(calc.y_intercept).to eq(1)
    expect(calc.slope).to eq(0)
  end

  it "has a y intercept of 1.5 and slope of 0.1" do
    coordinates = [[-5,1],[5,2]]
    calc = subject.new(coordinates)
    expect(calc.y_intercept).to eq(1.5)
    expect(calc.slope).to eq(0.1)
  end
end
