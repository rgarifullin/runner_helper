require 'test_helper'
require 'generators/runner_helper/runner_helper_generator'

class RunnerHelperGeneratorTest < Rails::Generators::TestCase
  tests RunnerHelperGenerator
  destination File.join(File.dirname(__FILE__), 'test_app/tmp')

  module TestApp
    class Application < Rails::Application
      config.root = File.join(File.dirname(__FILE__), 'test_app')
      config.eager_load = false
    end
  end

  def setup
    TestApp::Application.initialize!
    @name = 'lalala'
    @test_path = 'test/generators/runner_helper/test_app'
    FileUtils.cp('lib/runner_helper.rb', "#{@test_path}/lib/")
  end

  def teardown
    File.delete("#{@test_path}/lib/runner_helper.rb")
    FileUtils.remove_dir(destination_root)
    FileUtils.remove_dir("#{@test_path}/log")
  end

  def test_it_does_something_useful
    run_generator [@name.capitalize]

    assert_file "app/runners/#{@name}.rb"
    assert_file "vendor/systemd/#{@name}.service"
  end
end
