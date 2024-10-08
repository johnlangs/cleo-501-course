require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/course_prerequisites", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # CoursePrerequisite. As you add validations to CoursePrerequisite, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      CoursePrerequisite.create! valid_attributes
      get course_prerequisites_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      course_prerequisite = CoursePrerequisite.create! valid_attributes
      get course_prerequisite_url(course_prerequisite)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_course_prerequisite_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      course_prerequisite = CoursePrerequisite.create! valid_attributes
      get edit_course_prerequisite_url(course_prerequisite)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new CoursePrerequisite" do
        expect {
          post course_prerequisites_url, params: { course_prerequisite: valid_attributes }
        }.to change(CoursePrerequisite, :count).by(1)
      end

      it "redirects to the created course_prerequisite" do
        post course_prerequisites_url, params: { course_prerequisite: valid_attributes }
        expect(response).to redirect_to(course_prerequisite_url(CoursePrerequisite.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new CoursePrerequisite" do
        expect {
          post course_prerequisites_url, params: { course_prerequisite: invalid_attributes }
        }.to change(CoursePrerequisite, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post course_prerequisites_url, params: { course_prerequisite: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested course_prerequisite" do
        course_prerequisite = CoursePrerequisite.create! valid_attributes
        patch course_prerequisite_url(course_prerequisite), params: { course_prerequisite: new_attributes }
        course_prerequisite.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the course_prerequisite" do
        course_prerequisite = CoursePrerequisite.create! valid_attributes
        patch course_prerequisite_url(course_prerequisite), params: { course_prerequisite: new_attributes }
        course_prerequisite.reload
        expect(response).to redirect_to(course_prerequisite_url(course_prerequisite))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        course_prerequisite = CoursePrerequisite.create! valid_attributes
        patch course_prerequisite_url(course_prerequisite), params: { course_prerequisite: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested course_prerequisite" do
      course_prerequisite = CoursePrerequisite.create! valid_attributes
      expect {
        delete course_prerequisite_url(course_prerequisite)
      }.to change(CoursePrerequisite, :count).by(-1)
    end

    it "redirects to the course_prerequisites list" do
      course_prerequisite = CoursePrerequisite.create! valid_attributes
      delete course_prerequisite_url(course_prerequisite)
      expect(response).to redirect_to(course_prerequisites_url)
    end
  end
end
