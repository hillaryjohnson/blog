class Page < ActiveRecord::Base
  validates_presence_of :title, :name
end
