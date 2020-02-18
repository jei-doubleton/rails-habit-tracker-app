class MyHabit < ApplicationRecord
    belongs_to :user 
    belongs_to :habit 
    accepts_nested_attributes_for :habit

    def name
        self.habit.name
    end
end