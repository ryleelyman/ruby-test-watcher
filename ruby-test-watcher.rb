#!/usr/bin/env ruby
require 'listen'
directory = ARGV[0]
listener = Listen.to(directory) do
  $stdout.write `cd #{directory} && bundle exec rspec`
end
begin
  listener.start
  sleep
rescue Interrupt
  exit(0)
end
