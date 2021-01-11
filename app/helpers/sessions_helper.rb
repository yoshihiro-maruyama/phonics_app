module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if session[:user_id]
      User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
  end

  def current_user?(user)
    user && user == current_user
  end

  def guest_user
    User.find_by(name: "ゲスト")
  end

  def guest_user?(user)
    user && user == guest_user
  end
end
