module BrawlstarsApiWrapper
  class OfficialClient
    module Players

      # (ex: #2JRVRG02Y)
      def player(tag)
        self.class.get("/players/#{encode(tag)}")
      end

      def player_battlelog(tag)
        self.class.get("/players/#{encode(tag)}/battlelog")
      end

    end
  end
end
