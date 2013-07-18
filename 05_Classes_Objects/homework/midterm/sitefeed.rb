
class SiteFeed
  attr_accessor :request, :api_url, :raw_response, :response, :site_chosen, :reader
  require "httpi"
  require "json"  


  def initialize(reader)
    @reader = reader
  end


  def process_feed
    assign_url
    parse_feed
  end


  def assign_url

    case @reader.site_chosen    
      when "reddit"
        @api_url = "http://www.reddit.com/.json"
       
      when "digg"
        @api_url = "http://digg.com/api/news/popular.json"

      when "mashable"
        @api_url = "http://mashable.com/stories.json"

      else
        raise "I'm sorry I don't recognise that site"
    end
  end


  def get_feed
    @request = HTTPI::Request.new
    @request.url = @api_url
    HTTPI.get(@request).body
  end


  def parse_feed
    @raw_response = get_feed
    @response = JSON.parse(@raw_response)
  end

end 
