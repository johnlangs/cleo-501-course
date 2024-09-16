class RequirementsController < ApplicationController
  before_action :set_requirement, only: %i[ show edit update destroy ]

  # GET /requirements or /requirements.json
  def index
    @requirements = Requirement.all
  end

  # GET /requirements/1 or /requirements/1.json
  def show
  end

  # GET /requirements/new
  def new
    @requirement = Requirement.new
  end

  # GET /requirements/1/edit
  def edit
  end

  # POST /requirements or /requirements.json
  def create
    @requirement = Requirement.new(requirement_params)

    respond_to do |format|
      if @requirement.save
        format.html { redirect_to requirement_url(@requirement), notice: "Requirement was successfully created." }
        format.json { render :show, status: :created, location: @requirement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requirements/1 or /requirements/1.json
  def update
    respond_to do |format|
      if @requirement.update(requirement_params)
        format.html { redirect_to requirement_url(@requirement), notice: "Requirement was successfully updated." }
        format.json { render :show, status: :ok, location: @requirement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requirements/1 or /requirements/1.json
  def destroy
    @requirement.destroy!

    respond_to do |format|
      format.html { redirect_to requirements_url, notice: "Requirement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requirement
      @requirement = Requirement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requirement_params
      params.require(:requirement).permit(:name, :degree_plan_id)
    end
end
