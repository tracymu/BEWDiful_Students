class PrintSiteFeed
  attr_accessor :sitefeed
  
  
  def initialize(sitefeed)
    @sitefeed = sitefeed
    @reader = @sitefeed.reader
    @response = @sitefeed.response
    setup_printer
  end


  def setup_printer
    case @reader.site_chosen
      when "reddit"
        @printer = Reddit.new(@response)
      when "digg"
        @printer = Digg.new(@response)
      when "mashable"
        @printer = Mashable.new(@response)
    end
  end


  def print
    @printer.print    
  end


  def read_more
    puts "Want to read more? Type in the story number"
    @story_number = gets.chomp.to_i
    @length = @printer.num_stories + 1

    until @story_number < @length && @story_number > 0
      puts "Sorry, please enter a story number"
      @story_number = gets.chomp.to_i
    end

    @story_number = @story_number.to_i - 1

    @printer.print_story @story_number
  end

end


class Printer

  def initialize(response)
    @response = response
  end


  def print
    stories.each_with_index do |story, i|
      print_summary(story, i+1)
    end
  end


  def num_stories
    stories.length
  end

end


class Reddit < Printer

  def stories
    @response["data"]["children"]
  end  


  def print_summary(story, story_num)
    story = story["data"]
    puts "Story Number #{story_num}"
    puts "Title: #{story["title"]}"
    puts "Category: #{story["subreddit"]}"
    puts "Votes: #{story["score"]}"
    puts "Read More: #{story["url"]}"
    puts
  end


  def print_story(story_number)
    puts "To read the story \"#{stories[story_number]["data"]["title"]}\" go to #{stories[story_number]["data"]["url"]}"
  end

end


class Digg < Printer

  def stories
    @response["data"]["feed"]
  end


  def print_summary(story, story_num)
    puts "Story Number #{story_num}"
    puts "Title: #{story["content"]["title"]}"
    puts "DiggScore: #{story["digg_score"]}"
    puts "Read More: #{story["content"]["url"]}"
    puts
  end


  def print_story(story_number)
    puts "To read the story \"#{stories[story_number]["content"]["title"]}\" go to #{stories[story_number]["content"]["url"]}"
  end

end


class Mashable < Printer

  def stories
    @response["new"]
  end

  
  def print_summary(story, story_num)
    puts "Story Number #{story_num}"
    puts "Title: #{story["title"]}"
    puts "Channel: #{story["channel"]}"
    puts "Shares: #{story["shares"]["total"]}"
    
    puts
  end


  def print_story(story_number)
    puts "#{stories[story_number]["title"]}"
    puts "#{stories[story_number]["content"]["plain"]}"
  end

end