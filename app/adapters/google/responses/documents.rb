module Google
  class Api
    module Responses
      class Documents

        attr_reader :request

        def initialize(request)
          @request = request
        end

        def call
          request.status == 200 ? success : failure
        end

        private

        def success
          OpenStruct.new(success: true, data: request.response_json, status: request.status)
        end

        def failure
          OpenStruct.new(success: false, errors: request.response_json, status: request.status)
        end

      end
    end
  end
end
