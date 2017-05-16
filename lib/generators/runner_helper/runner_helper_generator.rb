require 'rails'
require 'rails/generators'

# Generates runner class and systemd unit file
class RunnerHelperGenerator < Rails::Generators::NamedBase
  desc 'Create runner class with systemd unit file.'

  source_root File.expand_path('../templates', __FILE__)
  argument 'username', default: 'deploy'

  def gen_runner_class
    template('runner_helper.rb.erb', "app/runners/#{file_name}_runner.rb")
  end

  def gen_unit_file
    template('unit.service.erb', "vendor/systemd/#{file_name}.service")
  end
end
