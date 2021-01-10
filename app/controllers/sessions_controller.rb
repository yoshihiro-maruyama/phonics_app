class SessionsController < ApplicationController

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path
    else
    flash.now[:danger] = '※パスワードか名前が違います'
    render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  def guest
    user = User.find_by(name: "ゲスト")
    if user.nil?
    redirect_to root_path
    else
      log_in user
      redirect_to root_path
    end
  end
end
