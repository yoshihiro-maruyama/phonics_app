class StudylogsController < ApplicationController
  def create
    @studylog = current_user.studylogs.build(log: 1, start_time: Time.zone.now)
    if @studylog.save
      redirect_to practice_path(1)
    else
      render root_path
    end
  end

  def destroy
    @studylog = Studylog.find(params[:id])
    @studylog.destroy
    redirect_to studylogs_path
  end
end
