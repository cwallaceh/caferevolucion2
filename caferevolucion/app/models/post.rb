class Post < ActiveRecord::Base
	belongs_to :blog
	validates_presence_of :title, :body, :blog, :category
	validates :content, length: { minimum: 120 }
	default_scope -> { order('created_at DESC') }
end
