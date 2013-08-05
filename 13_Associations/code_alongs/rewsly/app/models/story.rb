class Story < ActiveRecord::Base
  validates :headline, :content, :presence => true
  belongs_to :user
end
