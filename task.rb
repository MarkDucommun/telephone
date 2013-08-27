class Task
  attr_accessor :title, :description, :created_at, :status

  def initialize(title,description,status=false)
    self.title = title
    self.description = description
    self.created_at = Time.now()
    self.status = status
  end

  def mark_as_complete!
    self.status = true
  end

  def mark_as_incomplete!
    self.status = false
  end

  def complete?
    return self.status
  end
end

class List
  attr_accessor :title, :tasks

  def initialize(title)
    self.title = title
    self.tasks = []
  end

  def add_task(task_obj)
    self.tasks << task_obj
  end

  def complete_all
    self.tasks.map!{ |task| task.mark_as_complete! }
  end
end
