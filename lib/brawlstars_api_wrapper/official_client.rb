require "brawlstars_api_wrapper/official_client/brawlers"
require "brawlstars_api_wrapper/official_client/clubs"
require "brawlstars_api_wrapper/official_client/players"
require "brawlstars_api_wrapper/official_client/rankings"

module BrawlstarsApiWrapper
  class OfficialClient

    include HTTParty
    include BrawlstarsApiWrapper::OfficialClient::Brawlers
    include BrawlstarsApiWrapper::OfficialClient::Clubs
    include BrawlstarsApiWrapper::OfficialClient::Players
    include BrawlstarsApiWrapper::OfficialClient::Rankings
    base_uri "https://api.brawlstars.com/v1"
    format :json

    def initialize(access_token = nil)
      access_token ||= ENV["BS_OFFICIAL_API_KEY"]
      self.class.default_options.merge!(headers: { "Authorization" => "Bearer #{access_token}" })
    end

    def example
      return self.class.get("/brawlers").parsed_response
    end

    private

    def encode(string)
      return URI.encode_www_form_component(string)
    end

  end
end
