module Http
  module ExceptionsParser
    class Parser
      attr_reader :response, :original_exception

      def initialize(msg)
        code = 200
        body = msg

        @response           = OpenStruct.new(code: code, body: body)
        @original_exception = ''
      end
    end
  end
end
