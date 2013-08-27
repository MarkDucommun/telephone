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
    it "should have status" do
      expect(task).to respond_to(:status)
    end
  end

  describe "#mark_as_complete!" do
    it "should have mark_as_complete " do
      expect(task).to respond_to(:mark_as_complete!)
    end

    it "should change status to true" do
      task.mark_as_complete!
      expect(task.status).to be_true
    end
  end
end
