require "rails_helper"

RSpec.describe WodsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wods").to route_to("wods#index")
    end


    it "routes to #show" do
      expect(:get => "/wods/1").to route_to("wods#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/wods").to route_to("wods#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wods/1").to route_to("wods#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wods/1").to route_to("wods#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wods/1").to route_to("wods#destroy", :id => "1")
    end

  end
end
