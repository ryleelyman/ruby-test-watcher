# ruby-test-watcher
small CLI tool using RSpec and Listen to run tests on filesave.

`ruby-test-watcher` uses [Bundler](http://bundler.io/) to manage the 
[Listen](https://github.com/guard/listen) and 
[Rspec](https://github.com/rspec/rspec-metagem) gems it relies on.
Therefore, in order to use `ruby-test-watcher`,
you must run `bundle install` after cloning the repo.

Usage: `ruby-test-watcher /path/to/directory`. 
Supports tilde expansion but not relative paths.
Whenever a file inside the directory is changed,
`ruby-test-watcher` executes `bundle exec rspec`.

Exit with `^C`.
