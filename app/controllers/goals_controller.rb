class GoalsController < ApplicationController
    def index
        goals = Goal.all 
        render json: goals
    end 

    def new
        goal = Goal.new
    end

    def create 
        goal = Goal.create(goal_params)
        render json: goal
    end

    def show
        goal = Goal.find(params[:id])
        render json: goal
    end

    def edit
        goal = Goal.find(params[:id])
    end

    def update 
        goal = Goal.find(params[:id])
        goal.update(goal_params)
        render json: goal
    end

    def destroy 
        goal = Goal.find(params[:id])
        tempDate = goal
        goal.destroy
        render json: tempDate
    end 

    private
    def goal_params
        params.require(:goal).permit(:name, :user_id)
    end
end