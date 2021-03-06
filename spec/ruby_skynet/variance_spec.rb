require "ruby_skynet/variance"

describe RubySkynet::Variance do
  subject {described_class}

  it "calculates the variance" do
    result = subject.call({values: [600,470,170,430,300]})

    expect(result).to eq(21704)
  end
end
