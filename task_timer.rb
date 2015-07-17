class TaskTimer
  attr_accessor :tasks
  
  def initialize(tasks)
    @tasks = tasks
    @total_times = []
  end

  def call
    tasks.each do |task|
      @total_times << time_for_task(task)
      @total_time = nil
    end
    longest_time
  end

  def time_for_task(task)
    @total_time ||= 0
    @total_time += task.duration
    dependent_task = find_task_by_id(task.dependency_id)
    if dependent_task
      time_for_task(dependent_task)
    end
    @total_time
  end

  def longest_time
    @total_times.max
  end

  def find_task_by_id(id)
    @tasks.select { |d| d.id == id  }.first
  end

  def pretty_output
    "The longest task took #{longest_time} units of time including dependencies."
  end
end
