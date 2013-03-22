require "spec_helper"

describe DemotsController do
  describe "routing" do

    it "routes to #index" do
      get("/demots").should route_to("demots#index")
    end

    it "routes to #new" do
      get("/demots/new").should route_to("demots#new")
    end

    it "routes to #show" do
      get("/demots/1").should route_to("demots#show", :id => "1")
    end

    it "routes to #edit" do
      get("/demots/1/edit").should route_to("demots#edit", :id => "1")
    end

    it "routes to #create" do
      post("/demots").should route_to("demots#create")
    end

    it "routes to #update" do
      put("/demots/1").should route_to("demots#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/demots/1").should route_to("demots#destroy", :id => "1")
    end

  end
end
