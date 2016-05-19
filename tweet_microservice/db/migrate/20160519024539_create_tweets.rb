class CreateTweets < ActiveRecord::Migration
	def change
		create_table :tweets do |t|
			t.string :id_str
			t.string :content
		end
  	end
end