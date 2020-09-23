RSpec.describe BrawlstarsApiWrapper::OfficialClient do
  client = BrawlstarsApiWrapper::OfficialClient.new("this_is_a_token")

  describe "example" do
    it "returns a Hash" do
      stub_request(:get, "https://api.brawlstars.com/v1/brawlers").
      with(headers: {'Authorization'=>'Bearer this_is_a_token'}).
      to_return(status: 200, body: '{"items": [
        {"id": 123456, "name": "brawler1"},
        {"id": 789456, "name": "brawler2"}
      ]}', headers: {})

      expect(client.example).to be_a Hash
    end

    it "returns a list of brawlers" do
      stub_request(:get, "https://api.brawlstars.com/v1/brawlers").
      with(headers: {'Authorization'=>'Bearer this_is_a_token'}).
      to_return(status: 200, body: '{"items": [
        {"id": 123456, "name": "brawler1"},
        {"id": 789456, "name": "brawler2"}
      ]}', headers: {})
      expect(client.example["items"]).to be_a Array
    end
  end
end
