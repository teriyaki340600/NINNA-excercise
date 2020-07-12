class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "会員情報の更新ができました"
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private
    def user_params
      params.require(:user).permit(:name,
       :email, :post_code, :address, :phone_number, :image_id)
    end
end
