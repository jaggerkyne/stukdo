class Task < ActiveRecord::Base
   # A task belongs to a particular user
   belongs_to :user 
end
