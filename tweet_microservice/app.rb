require "sinatra"
require "sinatra/base"
require "sinatra/config_file"
require 'rufus-scheduler'
require "./tasks/top_tweets.rb"

# TODO: add documentation
# TODO: add testing

class TweetPooling < Sinatra::Base
	register Sinatra::ConfigFile
	register Sinatra::ActiveRecordExtension

	config_file './config/app.yml'

	def self.schedule_tweet_tasks( pooling, search )
		scheduler = Rufus::Scheduler.new

		scheduler.every pooling[ :frequency ], { :overlap => false, :timeout => pooling[ :timeout ] } do
			begin
				task = TopTwitterTask.new
				tweets = task.execute search[ :topics ], search[ :limit ]
			rescue Rufus::Scheduler::TimeoutError
				puts "Took too long to find the tweets, so we're giving up this time."
			end
		end
	end

	configure do
		schedule_tweet_tasks settings.pooling, settings.search
	end

	get '/tweets' do
		puts "teste"
	end

	# start the server if ruby file executed directly
	run! if app_file == $0
end