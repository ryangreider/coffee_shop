class DepartmentsController < ApplicationController
    before_action :authenticate_user! # Ensure users are authenticated if necessary
  
    def index
      @departments = Department.all
    end
  
    def show
      @department = Department.find(params[:id])
    end
  
    def new
      @department = Department.new
    end
  
    def create
      @department = Department.new(department_params)
      if @department.save
        redirect_to departments_path, notice: 'Department was successfully created.'
      else
        render :new
      end
    end
  
    def edit
      @department = Department.find(params[:id])
    end
  
    def update
      @department = Department.find(params[:id])
      if @department.update(department_params)
        redirect_to departments_path, notice: 'Department was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @department = Department.find(params[:id])
      @department.destroy
      redirect_to departments_path, notice: 'Department was successfully deleted.'
    end
  
    private
  
    def department_params
      params.require(:department).permit(:name)
    end
  end
  
