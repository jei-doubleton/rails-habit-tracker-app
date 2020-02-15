class MyHabit < ApplicationRecord
    belongs_to :user 
    belongs_to :habit 

    def name
        self.habit.name
    end
end