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
  end


end