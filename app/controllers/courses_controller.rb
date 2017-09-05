class CoursesController < ApplicationController 
   
   def index
   end
   
   def new
       @course = Course.new
   end
   
   def show
       @course = Course.find(params[:id])
   end
   
   def create
        @course = Course.new(course_params)
        if @course.save
            redirect_to @course
        else
            flash[:danger] = @course.errors.full_messages.to_sentence
            render 'new'
        end
   end
   
   def search
        @courses = Course.search(params)
        
   end
    
     private
        def course_params
            params.require(:course).permit(:name, :description, :coursecode)
        end
end