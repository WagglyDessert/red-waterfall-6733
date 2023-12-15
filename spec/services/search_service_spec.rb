require 'rails_helper'

describe SearchService do
  context "instance methods" do
    context "#members_by_nation" do
      it "connects", :vcr do
        service = SearchService.new 
        expect(service.conn).to be_instance_of Faraday::Connection
      end

      it "searches a specific endpoint", :vcr do
        search = SearchService.new.nation_members("fire nation")
        expect(search).to be_a Faraday::Response
      end
    end
  end
end