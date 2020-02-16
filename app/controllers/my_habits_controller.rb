class MyHabitsController < ApplicationController
    before_action :authentication_required

    def new
    end

    def create

    end

    private
    def my_habit_params
        params.require(:my_habit).permit(:habit_id, :frequency, :notes, :status, habit_attributes: [:name])
    end
    
end