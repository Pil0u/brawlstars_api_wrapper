require "brawlstars_api_wrapper/official_client/brawlers"

module BrawlstarsApiWrapper
  class OfficialClient

    include HTTParty
    include BrawlstarsApiWrapper::OfficialClient::Brawlers
    base_uri "https://api.brawlstars.com/v1"
    format :json

    def initialize(access_token = nil)
      access_token ||= ENV["BS_OFFICIAL_API_KEY"]
      self.class.default_options.merge!(headers: { "Authorization" => "Bearer #{access_token}" })
    end

    def example
      return self.class.get("/brawlers").parsed_response
    end

  end
end
