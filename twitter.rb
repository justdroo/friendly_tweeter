#
# Third-Party Modules
#
require 'twitter'
require 'byebug'
require 'dotenv'
Dotenv.load

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['CONSUMER_KEY']
  config.consumer_secret     = ENV['CONSUMER_SECRET']
  config.access_token        = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
end

all_tweets = client.user_timeline("tinycarebot")
# tweet = client.status(856575715625578497)


selected_tweets= all_tweets.map do |tweet|
  if tweet.in_reply_to_screen_name === nil
    tweet
  end
end.compact

byebug

if true

end
