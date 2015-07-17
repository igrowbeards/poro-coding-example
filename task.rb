class Task
  attr_accessor :id
  attr_accessor :duration
  attr_accessor :dependency_id

  def initialize(id, duration, dependency_id)
    @id = id
    @duration = duration
    @dependency_id = dependency_id
  end

  def has_dependency?
    self.dependency_id != nil
  end
end
