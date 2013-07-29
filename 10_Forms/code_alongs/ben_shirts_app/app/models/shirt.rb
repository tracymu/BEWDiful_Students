class Shirt < ActiveRecord::Base
<<<<<<< HEAD

  validates :title, :description, :presence => true
  # this makes it so it won't save into the database

=======
  validates :name, :description, :presence => true
>>>>>>> teacher/master
end
