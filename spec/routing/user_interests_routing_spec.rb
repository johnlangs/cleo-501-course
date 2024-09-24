require "rails_helper"

RSpec.describe UserInterestsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_interests").to route_to("user_interests#index")
    end

    it "routes to #new" do
      expect(get: "/user_interests/new").to route_to("user_interests#new")
    end

    it "routes to #show" do
      expect(get: "/user_interests/1").to route_to("user_interests#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/user_interests/1/edit").to route_to("user_interests#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_interests").to route_to("user_interests#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_interests/1").to route_to("user_interests#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_interests/1").to route_to("user_interests#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_interests/1").to route_to("user_interests#destroy", id: "1")
    end
  end
end
