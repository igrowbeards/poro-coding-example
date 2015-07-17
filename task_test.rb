require 'test/unit'
require './task'

class TaskTest < Test::Unit::TestCase
  def test_response
    task = Task.new(1,1,nil)
    assert task.id == 1
    assert task.duration == 1
    assert task.dependency_id == nil
  end

  def test_has_dependency
    assert_equal Task.new(1,1,nil).has_dependency?, false
    assert_equal Task.new(1,1,1).has_dependency?, true
  end
end
