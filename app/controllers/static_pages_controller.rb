class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @studylogs = current_user.feed
      @studylog = current_user.feed.new
    end
  end

  def about
  end
end
