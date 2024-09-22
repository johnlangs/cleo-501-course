require "rails_helper"

RSpec.describe UserPlanCoursesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_plan_courses").to route_to("user_plan_courses#index")
    end

    it "routes to #new" do
      expect(get: "/user_plan_courses/new").to route_to("user_plan_courses#new")
    end

    it "routes to #show" do
      expect(get: "/user_plan_courses/1").to route_to("user_plan_courses#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/user_plan_courses/1/edit").to route_to("user_plan_courses#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_plan_courses").to route_to("user_plan_courses#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_plan_courses/1").to route_to("user_plan_courses#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_plan_courses/1").to route_to("user_plan_courses#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_plan_courses/1").to route_to("user_plan_courses#destroy", id: "1")
    end
  end
end
