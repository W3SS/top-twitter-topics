require './models.rb'

class TopTwitterTask

	def initialize
		@client = client_with_credentials
	end

	def client_with_credentials
		Twitter::REST::Client.new do |config|
			config.consumer_key = ENV['TWITTER_CONSUMER_KEY']
			config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
			config.access_token = ENV['TWITTER_ACCESS_TOKEN']
			config.access_token_secret = ENV['TWITTER_TOKEN_SECRET']
		end
	end 

	def execute( topics, limit )

		topics.each do | topic |
			@client.search( "##{topic}", :result_type => "recent" ).take( limit ).collect { | t |
				tweet = Tweet.find_by :id_str => t.id

				tweet = Tweet.new( :id_str => t.id, :content => t.text, :topic => topic ) if tweet.nil?
				tweet.updated_at = Time.now

				if not tweet.save()
					puts "Something went wrong when saving or update the tweet #{tweet}"
				end
			}	
		end
	end

end 