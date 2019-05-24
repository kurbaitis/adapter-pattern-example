module Google
  class Api

    BASE_PATH = 'https://api.google.com'
    Credentials = Struct.new(:client_id, :client_secret, :base_path)

    def initialize(client_id, client_secret)
      @client_id = client_id
      @client_secret client_secret
    end

    def get_documents(user_token)
      Google::Api::Requests::GetDocuments.new(credentials, user_token).call
    end

    private

    def credentials
      @credentials ||= Credentials.new(client_id, client_secret, BASE_PATH)
    end

  end
end
