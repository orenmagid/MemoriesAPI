class CreateImages < ActiveRecord::Migration[5.2]
	def change
		create_table :images do |t|
			t.string :title
			t.string :url
			t.string :attribution
			t.string :notes
			t.boolean :live, default: false
			t.integer :user_id

			t.timestamps
		end
	end
end
