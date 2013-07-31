class Url < ActiveRecord::Base

####I didn't actually get this validation working properly######

# require 'uri'

# def valid?(uri)
#   !!URI.parse(uri)
# rescue URI::InvalidURIError
#   false
# end

before_save :clean_url

validates :name, :presence => true
 

  def generate_hash
    self.hash_code = rand(1000000)
  end


  def short_link
    "http://localhost:3000/#{hash_code}"
  end


  def long_link
    "http://#{name}"
  end

  def clean_url
    self.name = self.name.sub("http://","")
  end


end
