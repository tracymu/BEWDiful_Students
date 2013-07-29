class Shirt < ActiveRecord::Base

  validates :title, :description, :presence => true
  # this makes it so it won't save into the database

end
