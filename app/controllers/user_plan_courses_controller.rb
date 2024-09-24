class UserPlanCoursesController < ApplicationController
  before_action :set_user_plan_course, only: %i[ show edit update destroy ]

  # GET /user_plan_courses or /user_plan_courses.json
  def index
    @user_plan_courses = UserPlanCourse.all
  end

  # GET /user_plan_courses/1 or /user_plan_courses/1.json
  def show
  end

  # GET /user_plan_courses/new
  def new
    @user_plan_course = UserPlanCourse.new
  end

  # GET /user_plan_courses/1/edit
  def edit
  end

  # POST /user_plan_courses or /user_plan_courses.json
  def create
    @user_plan_course = UserPlanCourse.new(user_plan_course_params)

    respond_to do |format|
      if @user_plan_course.save
        format.html { redirect_to user_plan_course_url(@user_plan_course), notice: "User plan course was successfully created." }
        format.json { render :show, status: :created, location: @user_plan_course }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_plan_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_plan_courses/1 or /user_plan_courses/1.json
  def update
    respond_to do |format|
      if @user_plan_course.update(user_plan_course_params)
        format.html { redirect_to user_plan_course_url(@user_plan_course), notice: "User plan course was successfully updated." }
        format.json { render :show, status: :ok, location: @user_plan_course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_plan_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_plan_courses/1 or /user_plan_courses/1.json
  def destroy
    @user_plan_course.destroy!

    respond_to do |format|
      format.html { redirect_to user_plan_courses_url, notice: "User plan course was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_plan_course
      @user_plan_course = UserPlanCourse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_plan_course_params
      params.fetch(:user_plan_course, {})
    end
end
