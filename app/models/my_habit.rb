class MyHabit < ApplicationRecord
    belongs_to :user 
    belongs_to :habit 

    def name
        self.habit.name
    end

    def habit_name=(name)
        self.habit = Habit.find_or_create_by(name: name)
    end

    def habit_name
        self.habit ? self.habit.name : nil
    end

end