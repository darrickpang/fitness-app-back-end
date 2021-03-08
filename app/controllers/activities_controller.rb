class ActivitiesController < ApplicationController
    def index
        activities = Activity.all 
        render json: activities
    end 

    def new
        activity = Activity.new
    end

    def create 
        activity = Activity.create(activity_params)
        render json: activity
    end

    def show
        activity = Activity.find(params[:id])
        render json: activity
    end

    def edit
        activity = Activity.find(params[:id])
    end

    def update 
        activity = Activity.find(params[:id])
        activity.update(activity_params)
        render json: activity
    end

    def destroy 
        activity = Activity.find(params[:id])
        tempDate = activity
        activity.destroy
        render json: tempDate
    end 

    private
    def activity_params
        params.require(:activity).permit(:name, :date, :user_id)
    end
end