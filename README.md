# Http::ExceptionsParser

[![Gem Version](https://badge.fury.io/rb/http-exceptions_parser.svg)](https://rubygems.org/gems/http-exceptions_parser)

Parser that parses the exception message returned from the exception message returned from the [Http::Exceptions](https://github.com/rainforestapp/http-exceptions).

## Installation

Add this line to your application's Gemfile:

    gem 'http-exceptions_parser'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install http-exceptions_parser

## Usage

Add the following to your ruby program:

    require 'http-exceptions_parser'

Now parse the message returned from HttpExceptions

    msg = "An error as occured while processing response. Status 404\nNot Found"
    e = Http::ExceptionsParser.new(msg)
    e.response.code
    e.response.body
    e.original_exception

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
