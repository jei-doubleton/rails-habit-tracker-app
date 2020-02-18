class MyHabitsController < ApplicationController
    before_action :authentication_required

    def new
        @my_habit = MyHabit.new
        @habit = @my_habit.build_habit
    end

    def create
        @my_habit = MyHabit.new(my_habit_params)
        @my_habit.user_id = current_user.id

        if @my_habit.save 
            redirect_to user_path(current_user) 
        else
             raise @my_habit.inspect
        end
    end

    private
    def my_habit_params
        params.require(:my_habit).permit(:habit_name, :frequency, :notes, :status)
    end
    
end