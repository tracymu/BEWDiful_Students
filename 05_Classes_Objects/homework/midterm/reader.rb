class Reader
  attr_accessor :site_chosen

  def choose_site
    puts "Which site do you want to read from - Reddit, Digg or Mashable?"
    @site_chosen = gets.chomp.downcase
    sites_array = ["reddit","digg","mashable"]
   
    until sites_array.include? @site_chosen
      puts "Sorry, please enter one of the options"
      @site_chosen = gets.chomp.downcase
    end

  end

end