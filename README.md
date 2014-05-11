# Same Time

Constant time string comparisons in ruby

```ruby
require 'same_time'

SameTime.equal?('password', 'password') # => true

SameTime.equal?(' ', ' ')  # => false
SameTime.equal?(' ', ' ', allow_blank: true) # => true
```

## Installation

Add this line to your application's Gemfile:

    gem 'same_time'

And then execute:

    $ bundle


## Contributing

1. Fork it ( https://github.com/[my-github-username]/constant_time_compare/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
