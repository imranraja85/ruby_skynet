require 'ruby_skynet/algorithms/simple_linear_regression'

describe RubySkynet::Algorithms::SimpleLinearRegression do
  subject {described_class}

  it "has a y intercept of 1 and slope of 0" do
    xs, ys = [0,1,2], [1,1,1]
    calc = subject.new(xs, ys)
    expect(calc.y_intercept).to eq(1)
    expect(calc.slope).to eq(0)
  end
end
