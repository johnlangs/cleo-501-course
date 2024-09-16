require "rails_helper"

RSpec.describe CoursePrerequisitesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/course_prerequisites").to route_to("course_prerequisites#index")
    end

    it "routes to #new" do
      expect(get: "/course_prerequisites/new").to route_to("course_prerequisites#new")
    end

    it "routes to #show" do
      expect(get: "/course_prerequisites/1").to route_to("course_prerequisites#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/course_prerequisites/1/edit").to route_to("course_prerequisites#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/course_prerequisites").to route_to("course_prerequisites#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/course_prerequisites/1").to route_to("course_prerequisites#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/course_prerequisites/1").to route_to("course_prerequisites#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/course_prerequisites/1").to route_to("course_prerequisites#destroy", id: "1")
    end
  end
end
