class MyHabitsController < ApplicationController
    before_action :authentication_required

    def new
        @my_habit = MyHabit.new
    end

    def create
        @my_habit = MyHabit.new(my_habit_params)
        raise @my_habit.inspect
    end

    private
    def my_habit_params
        params.require(:my_habit).permit(:habit_id, :frequency, :notes, :status, habit_attributes: [:name])
    end
    
end