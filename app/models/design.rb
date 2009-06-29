class Design < ActiveRecord::Base
  validates_presence_of :title, :design_url
end
