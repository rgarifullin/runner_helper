require 'runner_helper/version'
require 'exception_notification'

# Periodically run in infinite loop
module RunnerHelper
  TIMEOUT = 5

  def service
    loop do
      run_once
      sleep TIMEOUT
    end
  rescue => ex
    ExceptionNotifier.notify_exception(ex)
  end

  def run_once
    raise NotImplementedError.new, 'implement `run_once` method first'
  end
end
