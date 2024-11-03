class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :update, :destroy ]
  before_action :authenticate_user!


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
    @user.destroy!

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :full_name, :major_id, :preference_id)
    end

    # only allow major to change in during user creation
    def user_params_creation
      params.require(:user).permit(:major_id, :preference_id)
    end
end
