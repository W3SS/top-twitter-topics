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
		tweets = Tweet.all
		#tweets  = []

		#topics.each do | topic |
		#	@client.search( "##{topic}", :result_type => "recent" ).take( limit ).collect { | tweet |
		#		tweets << Tweet.new( :id_str => tweet.id, :content => tweet.text ).save
		#	}	
		#end

		puts tweets
		tweets
	end

end 