class Task < ActiveRecord::Base
   # A task belongs to a particular user
   belongs_to :user 

   auto_html_for :content do
   	html_escape
   	image
   	youtube(:width => "100%", :height =>250, :autoplay => false)
   	link :target => "_blank", :rel => "nofollow"
   	simple_format
   end


   validates :user_id, presence: true
   validates :content, presence: true
end
