#
# Third-Party Modules
#
require 'twitter'
require 'byebug'
require 'dotenv'
require 'sinatra'

Dotenv.load

#
# Twitter Authentication
#

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['CONSUMER_KEY']
  config.consumer_secret     = ENV['CONSUMER_SECRET']
  config.access_token        = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
end

#
# Timeline Twitter Tweet selector
#
def timeline_select(screen_name, client)
  all_tweets = client.user_timeline(screen_name)

  selected_tweets= all_tweets.map do |tweet|
    if tweet.in_reply_to_screen_name === nil
      tweet.full_text
    end
  end.compact
end

#
# Route
#
get '/' do
  headers('Access-Control-Allow-Origin': '*')
  tweets = timeline_select("tinycarebot", client)
  tweets[0].to_json
end
