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

RSpec.describe "/requirement_courses", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # RequirementCourse. As you add validations to RequirementCourse, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      RequirementCourse.create! valid_attributes
      get requirement_courses_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      requirement_course = RequirementCourse.create! valid_attributes
      get requirement_course_url(requirement_course)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_requirement_course_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      requirement_course = RequirementCourse.create! valid_attributes
      get edit_requirement_course_url(requirement_course)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new RequirementCourse" do
        expect {
          post requirement_courses_url, params: { requirement_course: valid_attributes }
        }.to change(RequirementCourse, :count).by(1)
      end

      it "redirects to the created requirement_course" do
        post requirement_courses_url, params: { requirement_course: valid_attributes }
        expect(response).to redirect_to(requirement_course_url(RequirementCourse.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new RequirementCourse" do
        expect {
          post requirement_courses_url, params: { requirement_course: invalid_attributes }
        }.to change(RequirementCourse, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post requirement_courses_url, params: { requirement_course: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested requirement_course" do
        requirement_course = RequirementCourse.create! valid_attributes
        patch requirement_course_url(requirement_course), params: { requirement_course: new_attributes }
        requirement_course.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the requirement_course" do
        requirement_course = RequirementCourse.create! valid_attributes
        patch requirement_course_url(requirement_course), params: { requirement_course: new_attributes }
        requirement_course.reload
        expect(response).to redirect_to(requirement_course_url(requirement_course))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        requirement_course = RequirementCourse.create! valid_attributes
        patch requirement_course_url(requirement_course), params: { requirement_course: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested requirement_course" do
      requirement_course = RequirementCourse.create! valid_attributes
      expect {
        delete requirement_course_url(requirement_course)
      }.to change(RequirementCourse, :count).by(-1)
    end

    it "redirects to the requirement_courses list" do
      requirement_course = RequirementCourse.create! valid_attributes
      delete requirement_course_url(requirement_course)
      expect(response).to redirect_to(requirement_courses_url)
    end
  end
end
