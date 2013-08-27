class Task
  attr_accessor :title, :description, :created_at, :status

  def initialize(title,description)
    self.title = title
    self.description = description
    self.created_at = Time.now()
  end

end