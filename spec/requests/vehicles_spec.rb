require 'rails_helper'

RSpec.describe "Vehicles", :type => :request do
  describe "GET /vehicles" do
    it "works! (now write some real specs)" do
      get vehicles_path
      expect(response.status).to be(200)
    end
  end
end
