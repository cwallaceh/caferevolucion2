class Post < ActiveRecord::Base
	belongs_to :user
	validates :content, length: { minimum: 120 }
end
