class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
        -#flash[:notice]=　"ユーザ登録が完了しました"
        redirect_to("/users/#{@user.id}")
    else
      render :new
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user.update(user_params)
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/users/#{@user.id}")
    else
      render :edit
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    flash[:notice] = "ユーザーを削除しました"
    redirect_to("/users")
  end

  private
  def user_params
    params.require(:user).permit(:name, :nickname, :image)
  end

end
