require 'test_helper'

class RunnerHelperTest < Minitest::Test
  class DummyClass
    include RunnerHelper
  end

  def test_it_raises_not_implemented
    assert_raises(NotImplementedError) { DummyClass.new.service }
  end

  class SmartClass
    include RunnerHelper

    def run_once
      true
    end

    def loop
      yield
    end
  end

  def test_it_runs
    assert SmartClass.new.service
  end
end
