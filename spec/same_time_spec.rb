require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'same_time'

describe 'SameTime' do

  it 'returns true when it should' do
    SameTime.equal?('foo', 'foo').must_equal true

    SameTime.equal?('  ', '  ', allow_blank: true).must_equal true
  end

  it 'returns false when it should' do
    SameTime.equal?('foo', 'bar').must_equal false

    SameTime.equal?('foo', 'foobar').must_equal false

    SameTime.equal?('foo', 'foo ').must_equal false

    SameTime.equal?('foo', ' foo').must_equal false

    SameTime.equal?('  ', '  ').must_equal false
  end
    
end