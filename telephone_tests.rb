require 'rspec'
require_relative 'task'

describe Task do
  let(:task) { Task.new("A Title", "A Description") }
 
  describe "#initialize" do
    it "should require two arguments" do
      expect { Task.new }.to raise_error
    end

    it "it succeeds with two arguments" do
      expect {Task.new("A Title", "A Description") }.not_to raise_error
    end
  end

  describe "#created_at" do
    it "should have created at" do
      expect(task).to respond_to(:created_at)
    end
  end

  describe "#status" do
    it "should have status"
      expect(task).to respond_to(:status)
    end
  end
end
