class UsersController < ApplicationController

  before_action :set_user, only: [:show]
  before_action :authenticate_user!

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
  end

  # GET /recent_transactions
  def transactions
   @recent_transactions = current_user.transactions.most_recent
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_url(@user), notice: 'User was successfully created.'
    else
      render_errors @user
    end
  end

  # PATCH/PUT /users/1
  def update
    parms = user_params
    if parms[:password].blank? && parms[:password_confirmation].blank?
      parms.except!(:password, :password_confirmation)
    end

    if @user.update(parms)
      redirect_to user_url(@user), notice: 'User was successfully updated.'
    else
      render_errors @user
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:email, :role, :first_name, :last_name, :password, :password_confirmation,
                                 :phone_number, :address)
  end

end
