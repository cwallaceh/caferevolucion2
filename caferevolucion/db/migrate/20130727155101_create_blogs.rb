class CreateBlogs < ActiveRecord::Migration
	def change
		create_table :blogs do |t|
		t.column :user_id, :integer
		end
	end
end
