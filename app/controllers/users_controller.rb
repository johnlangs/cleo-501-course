class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :update ]
  before_action :authenticate_user!
  before_action :require_admin, only: [:admin_index]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
    @major = Major.find(current_user.major_id).name
    @preference = Subject.find(current_user.preference_id).name
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @majors = Major.all.pluck(:name, :id)
    @subjects = Subject.all.pluck(:name, :id)
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        create_user_plan
        format.html { redirect_to user_url(@user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }

      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    if @user.update(user_params)
      redirect_to user_profile_path, notice: "Profile updated successfully."
    else
      render :edit
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    user = User.find(params[:id])
    if current_user.isAdmin
      user.destroy!
      redirect_to admin_users_path, notice: "User deleted successfully."
    else
      redirect_to root_path, alert: "You are not authorized to delete users."
    end
  end

  def create_profile
    @user = current_user
    @majors = Major.all.pluck(:name, :id)
    @subjects = Subject.all.pluck(:name, :id)
  end

  def update_profile
    @user = current_user
    if @user.update(user_params_creation)
      redirect_to root_path, notice: "Profile updated successfully."
    else
      render :create_profile
    end
  end

  def admin_index
    if params[:search].present?
      @users = User.where("full_name ILIKE ?", "%#{params[:search]}%")
    else
      @users = User.all
    end
  end

  # GET /admin/users/:id/edit
  def edit_user_by_admin
    if current_user.isAdmin
      @user = User.find(params[:id])
      @majors = Major.all.pluck(:name, :id)
      @subjects = Subject.all.pluck(:name, :id)
    else
      redirect_to root_path, alert: "You are not authorized to access this page."
    end
  end

  def update_user_by_admin
    if current_user.isAdmin
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to admin_users_path, notice: "User updated successfully."
      else
        render :edit_user_by_admin
      end
    else
      redirect_to root_path, alert: "You are not authorized to perform this action."
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :full_name, :major_id, :preference_id, :max_class_hours, :graduation_semester, :graduation_year, :is_active)
    end

    # only allow major to change in during user creation
    def user_params_creation
      params.require(:user).permit(:major_id, :preference_id, :max_class_hours, :graduation_semester, :graduation_year)
    end

    def require_admin
      unless current_user.isAdmin
        redirect_to root_path, alert: "You are not authorized to access this page."
      end
    end
end
