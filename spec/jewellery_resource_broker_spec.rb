require 'spec_helper'

require 'json'

require 'jewellery_resource_broker'

describe JewelleryResourceBroker do
  include Webmachine::Test

  let(:app) { JewelleryResourceBroker }

  describe "/list" do
    it 'replies with JSON' do
      get '/list'
      expect(response.headers['Content-Type']).to be == 'application/json'
    end

    it "replies with a list of ids" do
      get '/list'
      pending
      expect(JSON.parse(response.body)).to be == [ ]
    end
  end
end