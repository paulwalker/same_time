require 'same_time/version'

module SameTime
  class << self
    def equal?(a, b, opts = {})
      return false if a.bytesize != b.bytesize ||
        (!opts[:allow_blank] && a !~ /[^[:space:]]/)

      y = b.bytes

      a.bytes.inject(0) { |r,x| r ^ (x ^ y.shift) } == 0
    end
  end
end
