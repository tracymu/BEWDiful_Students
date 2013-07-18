require_relative 'reader.rb'
require_relative 'sitefeed.rb'
require_relative'printers.rb'


reader = Reader.new
reader.choose_site

site_feed = SiteFeed.new(reader)
site_feed.process_feed

printer = PrintSiteFeed.new(site_feed)
printer.print
printer.read_more
