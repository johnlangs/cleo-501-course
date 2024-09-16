class CoursePrerequisitesController < ApplicationController
  before_action :set_course_prerequisite, only: %i[ show edit update destroy ]

  # GET /course_prerequisites or /course_prerequisites.json
  def index
    @course_prerequisites = CoursePrerequisite.all
  end

  # GET /course_prerequisites/1 or /course_prerequisites/1.json
  def show
  end

  # GET /course_prerequisites/new
  def new
    @course_prerequisite = CoursePrerequisite.new
  end

  # GET /course_prerequisites/1/edit
  def edit
  end

  # POST /course_prerequisites or /course_prerequisites.json
  def create
    @course_prerequisite = CoursePrerequisite.new(course_prerequisite_params)

    respond_to do |format|
      if @course_prerequisite.save
        format.html { redirect_to course_prerequisite_url(@course_prerequisite), notice: "Course prerequisite was successfully created." }
        format.json { render :show, status: :created, location: @course_prerequisite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course_prerequisite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_prerequisites/1 or /course_prerequisites/1.json
  def update
    respond_to do |format|
      if @course_prerequisite.update(course_prerequisite_params)
        format.html { redirect_to course_prerequisite_url(@course_prerequisite), notice: "Course prerequisite was successfully updated." }
        format.json { render :show, status: :ok, location: @course_prerequisite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course_prerequisite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_prerequisites/1 or /course_prerequisites/1.json
  def destroy
    @course_prerequisite.destroy!

    respond_to do |format|
      format.html { redirect_to course_prerequisites_url, notice: "Course prerequisite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_prerequisite
      @course_prerequisite = CoursePrerequisite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_prerequisite_params
      params.require(:course_prerequisite).permit(:course_id, :prerequisite_id)
    end
end
