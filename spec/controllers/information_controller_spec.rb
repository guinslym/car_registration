require 'rails_helper'

RSpec.describe InformationController, :type => :controller do

  describe "GET bon" do
    it "returns http success" do
      get :bon
      expect(response).to be_success
    end
  end

  describe "GET mechant" do
    it "returns http success" do
      get :mechant
      expect(response).to be_success
    end
  end

end
