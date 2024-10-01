require "rails_helper"

RSpec.describe DegreePlansController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/degree_plans").to route_to("degree_plans#index")
    end

    it "routes to #new" do
      expect(get: "/degree_plans/new").to route_to("degree_plans#new")
    end

    it "routes to #show" do
      expect(get: "/degree_plans/1").to route_to("degree_plans#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/degree_plans/1/edit").to route_to("degree_plans#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/degree_plans").to route_to("degree_plans#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/degree_plans/1").to route_to("degree_plans#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/degree_plans/1").to route_to("degree_plans#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/degree_plans/1").to route_to("degree_plans#destroy", id: "1")
    end
  end
end
