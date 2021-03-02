module BrawlstarsApiWrapper
  class StarlistClient

    include HTTParty
    base_uri ">>> INSERT URL HERE <<<"
    format :json

    def initialize(access_token = nil)
      access_token ||= ENV["BS_STARLIST_API_KEY"]
      self.class.default_options.merge!(headers: { "Authorization" => "Bearer #{access_token}" })
    end
  end
end
