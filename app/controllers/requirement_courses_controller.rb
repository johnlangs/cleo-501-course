class RequirementCoursesController < ApplicationController
  before_action :set_requirement_course, only: %i[ show edit update destroy ]

  # GET /requirement_courses or /requirement_courses.json
  def index
    @requirement_courses = RequirementCourse.includes(:requirement, :course).all
  end

  # GET /requirement_courses/1 or /requirement_courses/1.json
  def show
  end

  # GET /requirement_courses/new
  def new
    @requirement_course = RequirementCourse.new
  end

  # GET /requirement_courses/1/edit
  def edit
  end

  # POST /requirement_courses or /requirement_courses.json
  def create
    @requirement_course = RequirementCourse.new(requirement_course_params)

    respond_to do |format|
      if @requirement_course.save
        format.html { redirect_to requirement_course_url(@requirement_course), notice: "Requirement course was successfully created." }
        format.json { render :show, status: :created, location: @requirement_course }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @requirement_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requirement_courses/1 or /requirement_courses/1.json
  def update
    respond_to do |format|
      if @requirement_course.update(requirement_course_params)
        format.html { redirect_to requirement_course_url(@requirement_course), notice: "Requirement course was successfully updated." }
        format.json { render :show, status: :ok, location: @requirement_course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @requirement_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requirement_courses/1 or /requirement_courses/1.json
  def destroy
    @requirement_course.destroy!

    respond_to do |format|
      format.html { redirect_to requirement_courses_url, notice: "Requirement course was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requirement_course
      @requirement_course = RequirementCourse.includes(:requirement, :course).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requirement_course_params
      params.require(:requirement_course).permit(:requirement_id, :course_id)
    end
end
