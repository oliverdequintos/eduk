class TeachersController < ApplicationController
  def index
    @teachers = User.where(is_teacher: true)
    @teacher = User.new
  end

  def show
    @teacher = User.find(params[:id])
  end

  def new
    @teacher = User.new
  end

  def create
    @teachers = User.where(is_teacher: true)
    @teacher = User.create(teacher_params)
  end

  def edit
    @teacher = User.find(params[:id])
  end

  def update
    @teachers = User.where(is_teacher: true)
    @teacher = User.find(params[:id])

    @teacher.update_attributes(teacher_params)
  end

  def delete
    @teacher = User.find(params[:teacher_id])
  end

  def destroy
    @teachers = User.where(is_teacher: true)
    @teacher = User.find(params[:id])
    @teacher.destroy
  end

  private
  def teacher_params
    params.require(:user).permit(:first_name, :middle_name, :last_name, :date_of_birth, :gender, :contact_no, :is_teacher, :email, :password, :password_confirmation)
  end
end
