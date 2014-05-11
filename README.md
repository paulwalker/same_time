# Same Time

Constant time string comparisons in ruby

```ruby
require 'same_time'

SameTime.equal?('encrypted_value', 'encrypted_value') # => true

SameTime.equal?('encrypted_value', 'mismatched_encrypted_value') # => false

SameTime.equal?(' ', ' ')  # => false

SameTime.equal?(' ', ' ', allow_blank: true) # => true
```

The algorithm:

```
def equal?(a, b, opts = {})
  return false if a.bytesize != b.bytesize ||
    (!opts[:allow_blank] && a !~ /[^[:space:]]/)

  y = b.bytes

  a.bytes.inject(0) { |r,x| r ^ (x ^ y.shift) } == 0
end
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
