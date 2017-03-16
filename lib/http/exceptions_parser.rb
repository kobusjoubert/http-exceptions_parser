require 'ostruct'

require 'http/exceptions_parser/version'
require 'http/exceptions_parser/parser'

module Http
  module ExceptionsParser
    class << self
      def new(msg)
        Parser.new(msg)
      end
    end
  end
end
