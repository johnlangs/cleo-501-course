require "rails_helper"

RSpec.describe RequirementCoursesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/requirement_courses").to route_to("requirement_courses#index")
    end

    it "routes to #new" do
      expect(get: "/requirement_courses/new").to route_to("requirement_courses#new")
    end

    it "routes to #show" do
      expect(get: "/requirement_courses/1").to route_to("requirement_courses#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/requirement_courses/1/edit").to route_to("requirement_courses#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/requirement_courses").to route_to("requirement_courses#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/requirement_courses/1").to route_to("requirement_courses#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/requirement_courses/1").to route_to("requirement_courses#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/requirement_courses/1").to route_to("requirement_courses#destroy", id: "1")
    end
  end
end
