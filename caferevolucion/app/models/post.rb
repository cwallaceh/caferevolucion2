class Post < ActiveRecord::Base
	belongs_to :user
	validates :content, length: { minimum: 120 }
	validates :user_id, presence: true
	default_scope -> { order('created_at DESC') }
end
