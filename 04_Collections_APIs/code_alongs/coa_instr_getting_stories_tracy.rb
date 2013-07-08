

# Get a feed of the stories from reddit and print them to STDOUT


#require the httpi gem so that we can use it to read the APIs on reddit, etc. 
require "httpi"

#require JSON - this is already a part of Ruby
require "json"


def get_reddit_feed
  #request an instance of that HTTPI class
  request = HTTPI::Request.new

  ##request the URL to do this on
  request.url = "http://www.reddit.com/.json"
  #getting the data feed
  HTTPI.get(request).body
end

#turning it into a hash
def parse_reddit_feed(raw_response)
  JSON.parse(raw_response)
end

def print_reddit_stories(stories)
  stories.each do |story|
    print_reddit_story(story["data"])
  end
end


def print_reddit_story(story)
  puts "Title: #{story["title"]}"
  puts "Category: #{story["subreddit"]}"
  puts "Votes: #{story["score"]}"
  ##puts "Created: #{story["created"]}"
  puts
end

raw_response = get_reddit_feed
response = parse_reddit_feed(raw_response)
print_reddit_stories(response["data"]["children"])


###############################################################################
#Mashable
def get_mashable_feed
  #request an instance of that HTTPI class
  request = HTTPI::Request.new

  ##request the URL to do this on
  request.url = "http://mashable.com/stories.json"
  #getting the data feed
  HTTPI.get(request).body
end

#turning it into a hash
def parse_mashable_feed(raw_response)
  JSON.parse(raw_response)
end




raw_response = get_mashable_feed

#check if raw_response is a string
#puts raw_response.class

response = parse_mashable_feed(raw_response)

# check if response is a hash
#puts response.class



stories = response["new"]

def print_mashable_stories(stories)
  stories.each do |story|
    print_mashable_story(story)
  end
end

def print_mashable_story(story)
  puts "Title: #{story["title"]}"
  puts "Channel: #{story["channel"]}"
  puts "Shares: #{story["shares"]["total"]}"
  ##puts "Created: #{story["post_date"]}"
  puts
end

print_mashable_stories(stories)

########################################################################
##DIGG API

def get_digg_feed
  #request an instance of that HTTPI class
  request = HTTPI::Request.new

  ##request the URL to do this on
  request.url = "http://digg.com/api/news/popular.json"
  #getting the data feed
  HTTPI.get(request).body
end

#turning it into a hash
def parse_digg_feed(raw_response)
  JSON.parse(raw_response)
end

raw_response = get_digg_feed

response = parse_digg_feed(raw_response)

stories = response["data"]["feed"]


def print_digg_stories(stories)
  stories.map do |story|
    print_digg_story(story)
  end
end

def print_digg_story(story)
  puts "Title: #{story["content"]["title"]}"
  puts "DiggScore: #{story["digg_score"]}"
  puts
end



print_digg_stories(stories)


