require 'rspec'
require_relative 'code.rb'

RSpec.describe "duplicate_counter" do
  it "passes examples from the readme" do
    expect(duplicate_counter([1,7,7,7,3,5])).to eq(2)
    expect(duplicate_counter([5,7,9])).to eq(0)
    expect(duplicate_counter([0,-5,-5,33,33,33])).to eq(3)
  end

  it "handles empty array properly" do
    expect(duplicate_counter([])).to eq(0)
  end

  it "handles numbers and number strings properly" do
    expect(duplicate_counter(["10",10,11,"11"])).to eq(0)
  end
end
