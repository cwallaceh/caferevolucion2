class Post < ActiveRecord::Base

resourcify

	belongs_to :user
	validates :user_id, presence: true
	validates :title, presence: true
	validates :body, presence: true, length: { minimum: 140 }
	default_scope -> { order('created_at DESC') }

self.per_page = 5

end
