require "ruby_skynet/algorithms/variance"

describe RubySkynet::Algorithms::Variance do
  subject {described_class}

  it "calculates the variance" do
    result = subject.new.call([600,470,170,430,300])

    expect(result).to eq(21704)
  end
end
