module Google
  class Fake

    def get_documents(user_token)
      return failure if user_token == 'fail'

      success
    end

    private

    def success
      OpenStruct.new(success: true, data: [{ id: 1 }], status: 200)
    end

    def failure
      OpenStruct.new(success: false, errors: [{ id: '001', description: 'test test '}], status: 401)
    end

  end
end
