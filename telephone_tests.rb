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

    it "should return a Time" do
      expect task.created_at.class == Time
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

  describe "#mark_as_incomplete!" do
    it "should have mark_as_incomplete " do
      expect(task).to respond_to(:mark_as_incomplete!)
    end

    it "should change status to false" do
      task.mark_as_incomplete!
      expect(task.status).to be_false
    end
  end

  describe "#complete?" do
    it "should have complete?" do
      expect(task).to respond_to(:complete?)
    end
    
    context "task incomplete" do
      it "should return incomplete" do
        expect(task.complete?).to be_false
      end
    end
    
    context "task complete" do
      let(:task){ Task.new("A Task", "It's already complete!", true)}

      it "should return complete" do
        expect(task.complete?).to be_true
      end
    end  
  end
end

describe "List" do
  let(:list){ List.new("A Title")}
  let(:task){ double(:task,
                     title: "a task",
                     description: "it's incomplete",
                     status: false,
                     created_at: Time.now()) }

  describe "#initialize" do
    it "should initialize with a title" do
      expect { List.new("A Title") }.not_to raise_error
    end

    it "should initialize with tasks as an empty array" do
      expect(list.tasks).to eq([])
    end
  end

  describe "#title" do
    it "should have a title" do
      expect(list).to respond_to(:title)
    end
  end

  describe "#tasks" do
    it "should have tasks" do
      expect(list).to respond_to(:tasks)
    end
  end

  describe "#add_task" do
    it "should have method add_task" do
      expect(list).to respond_to(:add_task)
    end

    it "should accept a task" do
      
      list.add_task(task)
      expect(list.tasks.size).to eq 1
    end
  end

  describe "#complete_all" do
    it "should have complete_all" do
      expect(list).to respond_to(:complete_all)
    end

    it "should mark all tasks complete" do
      task = double(:task)
      task.should_receive(:mark_as_complete!)
      list.add_task(task)
      list.complete_all
    end
  end
end

