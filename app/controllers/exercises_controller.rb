class ExercisesController < ApplicationController
    def index
        exercises = Exercise.all 
        render json: exercises
    end 

    def new
        exercise = Exercise.new
    end

    def create 
        exercise = Exercise.create(goal_params)
        render json: exercise
    end

    def show
        exercise = Exercise.find(params[:id])
        render json: exercise
    end

    def edit
        exercise = Exercise.find(params[:id])
    end

    def update 
        exercise = Exercise.find(params[:id])
        exercise.update(goal_params)
        render json: exercise
    end

    def destroy 
        exercise = Exercise.find(params[:id])
        tempDate = exercise
        exercise.destroy
        render json: tempDate
    end 

    private
    def goal_params
        params.require(:exercise).permit(:name)
    end
end