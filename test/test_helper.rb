$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'runner_helper'

require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!
