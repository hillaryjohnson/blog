class Design < ActiveRecord::Base
  validates_presence_of :title, :image_url
end
