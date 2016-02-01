require 'string_calculator'

RSpec.describe StringCalculator, "#add" do

  it "returns 0 for empty string" do
    expect(StringCalculator.add("")).to eql(0)
  end

  it "returns the integer of a single string number" do
    expect(StringCalculator.add("0")).to eql(0)
    expect(StringCalculator.add("5")).to eql(5)
  end

  it "returns the sum of all numbers in a comma delimited string" do
    expect(StringCalculator.add("1,2")).to eq(3)
    expect(StringCalculator.add("7,9")).to eq(16)
    expect(StringCalculator.add("12,45")).to eq(57)
  end

  it "parses the new line character" do
    expect(StringCalculator.add("1\n2,3")).to eq(6)
  end

  it "should use the delimiter set by input" do
    # “//;\n2;5”
    expect(StringCalculator.add("//;\n2;5")).to eq(7)
  end

end
