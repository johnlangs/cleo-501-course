class DegreePlansController < ApplicationController
  before_action :set_degree_plan, only: %i[ show edit update destroy ]

  # GET /degree_plans or /degree_plans.json
  def index
    @degree_plans = DegreePlan.all
  end

  # GET /degree_plans/1 or /degree_plans/1.json
  def show
  end

  # GET /degree_plans/new
  def new
    @degree_plan = DegreePlan.new
  end

  # GET /degree_plans/1/edit
  def edit
  end

  # POST /degree_plans or /degree_plans.json
  def create
    @degree_plan = DegreePlan.new(degree_plan_params)

    respond_to do |format|
      if @degree_plan.save
        format.html { redirect_to degree_plan_url(@degree_plan), notice: "Degree plan was successfully created." }
        format.json { render :show, status: :created, location: @degree_plan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @degree_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /degree_plans/1 or /degree_plans/1.json
  def update
    respond_to do |format|
      if @degree_plan.update(degree_plan_params)
        format.html { redirect_to degree_plan_url(@degree_plan), notice: "Degree plan was successfully updated." }
        format.json { render :show, status: :ok, location: @degree_plan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @degree_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /degree_plans/1 or /degree_plans/1.json
  def destroy
    @degree_plan.destroy!

    respond_to do |format|
      format.html { redirect_to degree_plans_url, notice: "Degree plan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_degree_plan
      @degree_plan = DegreePlan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def degree_plan_params
      params.require(:degree_plan).permit(:name)
    end
end
