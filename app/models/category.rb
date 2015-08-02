class Category < ActiveRecord::Base
	has_many :videos

	def change
		create_table :categories do |t|
			t.string :name
		end
	end
end
