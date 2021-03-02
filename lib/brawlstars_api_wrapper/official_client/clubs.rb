module BrawlstarsApiWrapper
  class OfficialClient
    module Clubs

      # Retrieve general information about a specific club (name, description, members).
      #
      # @param tag [String] the game id of the club (ex: #YC8022RG)
      # @return [HTTParty::Response] the (enriched) API response
      def club(tag)
        self.class.get("/clubs/#{encode(tag)}")
      end

      def club_members(tag, params = {})
        self.class.get("/clubs/#{encode(tag)}/members", query: params)
      end

    end
  end
end
