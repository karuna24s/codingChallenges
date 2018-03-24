Welcome to Glossier's engineering exercise!

# Instructions

You can complete the exercise in either Ruby or JavaScript. The goal of the
exercise is to make all the failing tests pass.

## Ruby

To get the tests running in Ruby:

1. Change into the `ruby` directory.
2. Run `make bootstrap` to setup your environment. This doesn't install Ruby or
   Bundler – you may need to set these up yourself. Install Ruby 2.5.0 if you're
   having troubles.
3. Run `make test` – you should see many failing tests. The tests live in
   `test/test_unit.rb`. Start at the top of the file, and make each test pass
   by implementing the methods defined in `lib/exercise.rb`. The exercise is
   complete when all tests pass.

## JavaScript

To get the tests running in JavaScript:

1. Change into the `javascript` directory.
2. Run `make bootstrap` to setup your environment. This doesn't install Node or
   npm – you may need to set these up yourself. Install Node 8.9.3 if you're
   having troubles.
3. Run `make test` – you should see many failing tests. The tests live in
   `test/test_unit.js`. Start at the top of the file, and make each test pass
   by implementing the methods defined in `lib/exercise.js`. The exercise is
   complete when all tests pass.

# Hints

* You shouldn't need to modify code in `test/*` or pull in new packages as
  dependencies. You're free to add more code anywhere in `lib` if it helps you solve
  problems, but you may not need to.
* Consider whether a problem can be solved with a functional approach by using map,
  filter, and reduce.
