require 'rspec'
# require_relative '?'

describe Task do
  
  describe "#initialize" do
    it "should require two arguments" do
      expect { Task.new }.to raise_error
    end

    it "it succeeds with two arguments" do
      expect {Task.new("A Title", "A Description") }.not_to raise_error 
    end
  end
end
