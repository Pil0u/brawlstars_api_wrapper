module BrawlstarsApiWrapper
  class OfficialClient
    module Brawlers

      # Retrieve the list of all available Brawlers.
      #
      # @param params [Hash] the params, which are :before, :after and :limit
      #   * :limit (int) takes the first items
      #   * :before and :after (string) are cursors (ex: eyJwb3MiOjJ9)
      # @return [HTTParty::Response] the (enriched) API response
      def brawlers(params = {})
        self.class.get("/brawlers", query: params) #.parsed_response
      end

      # Retrieve information for one specific Brawler.
      #
      # @param id [Integer] the API id of the Brawler (pattern: 160000XX)
      # @return [HTTParty::Response] the (enriched) API response
      def brawler(id)
        self.class.get("/brawlers/#{id}") #.parsed_response
      end

    end
  end
end
