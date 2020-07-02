class TodoItem < ActiveRecord::Base
    def self.completed_items 
        @completed_items = self.where(completed: true).count
    end
end
