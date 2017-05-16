require 'test_helper'

class RunnerHelperTest < Minitest::Test
  class DummyClass
    include RunnerHelper
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

  def test_it_catches_errors
    assert DummyClass.new.service
  end

  def test_it_runs
    assert SmartClass.new.service
  end
end
