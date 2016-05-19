class CreateTweets < ActiveRecord::Migration
	def change
		create_table :tweets do |t|
			t.string :id_str, null: false
			t.string :content, null: false
			t.string :topic, null: false
			t.datetime :updated_at, null: false
		end
  	end
end