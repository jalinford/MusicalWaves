require "spec_helper"

describe ConcertsController do
  describe "routing" do

    it "routes to #index" do
      get("/concerts").should route_to("concerts#index")
    end

    it "routes to #new" do
      get("/concerts/new").should route_to("concerts#new")
    end

    it "routes to #show" do
      get("/concerts/1").should route_to("concerts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/concerts/1/edit").should route_to("concerts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/concerts").should route_to("concerts#create")
    end

    it "routes to #update" do
      put("/concerts/1").should route_to("concerts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/concerts/1").should route_to("concerts#destroy", :id => "1")
    end

  end
end
