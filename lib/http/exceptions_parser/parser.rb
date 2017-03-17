module Http
  module ExceptionsParser
    class Parser
      attr_reader :response, :original_exception

      def initialize(msg)
        msg       = msg.to_s
        msg_code  = /Status (\d{1,})/.match(msg)
        msg_body  = /\n(.*)( Original Exception: )/.match(msg)
        msg_body  = /\n(.*)/.match(msg) unless msg_body
        code      = msg_code[1].to_i if msg_code
        body      = msg_body[1] if msg_body
        @response = OpenStruct.new(code: code, body: body)

        original_exception  = /Original Exception: (.*)/.match(msg)
        @original_exception = original_exception[1] if original_exception
      end
    end
  end
end
