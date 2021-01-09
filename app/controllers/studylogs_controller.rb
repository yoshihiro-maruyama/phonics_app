class StudylogsController < ApplicationController

  def index
    @studylogs = Studylog.all
    @studylog = Studylog.new
  end

  def new
    @studylog = Studylog.new

  end

  def show
    @studylog = Studylog.find(params[:id])
  end

  def create
    @studylog = current_user.studylogs.build(log: 1, start_time: Date.today)
    if @studylog.save
      redirect_to practice_path(1)
    else
      render studylogs_path
    end
  end

  def destroy
    @studylog = Studylog.find(params[:id])
    @studylog.destroy
    redirect_to studylogs_path
  end

  def edit
    @studylog = Studylog.find(params[:id])
  end

  def update
    @studylog = Studylog.find(params[:id])
    if @studylog.update(studylog_parameter)
      redirect_to studylogs_path
    else
      render 'edit'
    end
  end

    private

    def studylog_parameter
      params.require(:studylog).permit(:log, :start_time)
    end
end
