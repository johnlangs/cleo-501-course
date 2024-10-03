class MajorsController < ApplicationController
    def index
      @majors = Major.all
    end
  
    def show
      @major = Major.find(params[:id])
    end
  
    def new
      @major = Major.new
    end
  
    def edit
      @major = Major.find(params[:id])
    end
  
    def create
      @major = Major.new(major_params)
      if @major.save
        redirect_to @major
      else
        render 'new'
      end
    end
  
    def update
      @major = Major.find(params[:id])
      if @major.update(major_params)
        redirect_to @major
      else
        render 'edit'
      end
    end
  
    def destroy
      @major = Major.find(params[:id])
      @major.destroy
      redirect_to majors_path
    end
  
    private
      def major_params
        params.require(:major).permit(:name, :description)
      end
  end
  