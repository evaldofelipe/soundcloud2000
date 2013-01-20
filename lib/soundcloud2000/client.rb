require 'soundcloud'

module Soundcloud2000
  class Client

    def initialize(client_id)
      @client = Soundcloud.new(client_id: client_id)
    end

    def tracks(page = 1, limit = 10)
      @client.get('/tracks', offset: (page - 1) * limit, limit: limit)
    end

    def get(*args)
      @client.get(*args)
    end

    def client_id
      @client.client_id
    end

  end
end
