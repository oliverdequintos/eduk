class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    @subjects = Subject.all
    @subject = Subject.create(subject_params)
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subjects = Subject.all
    @subject = Subject.find(params[:id])

    @subject.update_attributes(subject_params)
  end

  def delete
    @subject = Subject.find(params[:subject_id])
  end

  def destroy
    @subjects = Subject.all
    @subject = Subject.find(params[:id])
    @subject.destroy
  end

  private
  def subject_params
    params.require(:subject).permit(:subject_code, :name, :description)
  end
end
