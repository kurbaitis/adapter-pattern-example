module Google
  class Api
    module Requests
      class GetDocuments

        include HTTParty

        def initialize(credentials, user_token)
          @credentials = credentials
          @user_token = user_token
        end

        def call
          Google::Api::Responses::Documents.new(request).call
        end

        private

        def request
          self.get([BASE_PATH, 'documents'].join('/'), headers: { 'Authorization' => user_token })
        end

      end
    end
  end
end
