# RunnerHelper

[![Build Status](https://travis-ci.org/rgarifullin/runner_helper.svg?branch=master)](https://travis-ci.org/rgarifullin/runner_helper)
[![Code Climate](https://codeclimate.com/github/rgarifullin/runner_helper/badges/gpa.svg)](https://codeclimate.com/github/rgarifullin/runner_helper)

RunnerHelper launches [Rails runner](http://guides.rubyonrails.org/command_line.html#rails-runner) as [Systemd](https://www.freedesktop.org/wiki/Software/systemd/) service. This runner periodically runs code (every 5 seconds by default).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'runner_helper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install runner_helper

## Usage

    $ rails g runner_helper billing

creates `BillingRunner` class file `app/runners/billing_runner.rb` with systemd unit file `vendor/systemd/billing.service`. Implement your business logic in `run_once` method.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ringarifullin/runner_helper.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
