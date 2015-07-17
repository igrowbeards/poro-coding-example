require 'test/unit'
require './task'
require './task_timer'

class TaskTimerTest < Test::Unit::TestCase

  def test_response_to_tasks
    tasks = [Task.new(1,1,nil), Task.new(2,4,1)]
    timer = TaskTimer.new(tasks)
    assert timer.tasks == tasks
  end

  def test_find_task_by_id
    tasks = [Task.new(1,1,nil), Task.new(2,4,nil), Task.new(3,7,nil)]
    timer = TaskTimer.new(tasks)
    assert_equal tasks.first, timer.find_task_by_id(tasks.first.id)
  end

  def test_returns_the_longest_time
    tasks = [Task.new(1,1,nil), Task.new(2,4,nil), Task.new(3,7,nil)]
    timer = TaskTimer.new(tasks)
    assert_equal 7, timer.call
  end

  def test_longest_time_with_one_dependency
    tasks = [Task.new(1,1,nil), Task.new(2,4,nil), Task.new(3,7,nil), Task.new(4,1,3)]
    timer = TaskTimer.new(tasks)
    assert_equal 8, timer.call
  end

  def test_longest_time_with_infinite_dependencies
    tasks = [Task.new(1,1,nil), Task.new(2,4,nil), Task.new(3,7,2), Task.new(4,1,3)]
    timer = TaskTimer.new(tasks)
    assert_equal 12, timer.call
  end

  def test_pretty_output
    tasks = [Task.new(1,1,nil), Task.new(2,4,nil), Task.new(3,7,2), Task.new(4,1,3)]
    timer = TaskTimer.new(tasks)
    timer.call
    assert_equal 'The longest task took 12 units of time including dependencies.', timer.pretty_output
  end
end
